#!/usr/bin/env python3

from gi.repository import GLib
from gi.events import GLibEventLoopPolicy

import asyncio

import dbus
import dbus.service
import dbus.mainloop.glib

import contextlib
import glob
import json
import os
import secrets
import shutil
import string
import subprocess
import sys
import tempfile
import traceback
import textwrap


non_ambiguous_chars = [c for c in string.ascii_letters + string.digits if c not in ['0', 'O', 'o', 'l', '1']]


def generate_recovery_passphrase():
    def random_char():
        return secrets.choice(non_ambiguous_chars)
    return '-'.join(''.join(random_char() for i in range(3)) for j in range(6))

repart_templates = {
    "10-esp.conf": textwrap.dedent(
        '''\
        [Partition]
        Type=esp
        Format=vfat
        CopyFiles=/usr/share/factory/efi:/
        CopyFiles=/var/lib/gnomeos/installer-esp/EFI/Linux/gnomeos_%A.efi:/EFI/Linux/gnomeos_%A.efi
        CopyFiles=/var/lib/gnomeos/install-credentials:/loader/credentials
        SizeMinBytes=500M
        SizeMaxBytes=1G
        '''
    ),
    "20-usr-verity-A.conf": textwrap.dedent(
        '''\
        [Partition]
        Type=usr-verity
        Label=gnomeos_usr_v_%A
        # verity for 4G, algo sha256, block size 512 and hash size 512 is 275M
        SizeMinBytes=275M
        SizeMaxBytes=275M
        CopyBlocks=/dev/gnomeos-installer/verity
        Label={verity_label}
        UUID={verity_uuid}
        '''
    ),
    "21-usr-A.conf": textwrap.dedent(
        '''\
        [Partition]
        Type=usr
        Label=gnomeos_usr_%A
        SizeMinBytes=4G
        SizeMaxBytes=4G
        CopyBlocks=/dev/gnomeos-installer/usr
        Label={usr_label}
        UUID={usr_uuid}
        '''
    ),
    "30-usr-verity-B.conf": textwrap.dedent(
        '''\
        [Partition]
        Type=usr-verity
        Label=gnomeos_usr_v_empty
        # verity for 4G, algo sha256, block size 512 and hash size 512 is 275M
        SizeMinBytes=275M
        SizeMaxBytes=275M
        '''
    ),
    "31-usr-B.conf": textwrap.dedent(
        '''\
        [Partition]
        Type=usr
        Label=gnomeos_usr_%A
        SizeMinBytes=4G
        SizeMaxBytes=4G
        '''
    ),
    "50-root.conf": textwrap.dedent(
        '''\
        [Partition]
        Type=root
        Label=root
        Encrypt={encrypt}
        CopyBlocks=/dev/null
        '''
    )
}

class Polkit:
    def __init__(self, system_bus):
        self.system_bus = system_bus
        polkit_obj = system_bus.get_object('org.freedesktop.PolicyKit1', '/org/freedesktop/PolicyKit1/Authority')
        self.authority_interface = dbus.Interface(polkit_obj, dbus_interface='org.freedesktop.PolicyKit1.Authority')

    def check_authorization(self, action_id):
        is_authorized, is_challenge, details = self.authority_interface.CheckAuthorization(
            ("system-bus-name", {"name": self.system_bus.get_unique_name()}),
            action_id,
            {},
            1,
            "")
        return is_authorized


class Udisks:
    def __init__(self, system_bus):
        self.system_bus = system_bus
        udisks_obj = system_bus.get_object('org.freedesktop.UDisks2', '/org/freedesktop/UDisks2')
        self.manager_interface = dbus.Interface(udisks_obj, dbus_interface='org.freedesktop.UDisks2.Manager')
        self.objman_interface = dbus.Interface(udisks_obj, dbus_interface='org.freedesktop.DBus.ObjectManager')

    def get_disks(self):
        ret = []
        drives = {}
        blocks = {}
        partitions = {}
        for path, interfaces in self.objman_interface.GetManagedObjects().items():
            if 'org.freedesktop.UDisks2.Drive' in interfaces:
                drives[path] = self.system_bus.get_object('org.freedesktop.UDisks2', path)
            if 'org.freedesktop.UDisks2.Block' in interfaces and 'org.freedesktop.UDisks2.Partition' not in interfaces:
                blocks[path] = self.system_bus.get_object('org.freedesktop.UDisks2', path)
            if 'org.freedesktop.UDisks2.Block' in interfaces and 'org.freedesktop.UDisks2.Partition'in interfaces:
                partitions[path] = self.system_bus.get_object('org.freedesktop.UDisks2', path)

        has_partitions = set()
        for path, partition in partitions.items():
            drive_path = partition.Get('org.freedesktop.UDisks2.Block', 'Drive', dbus_interface=dbus.PROPERTIES_IFACE)
            drive = drives.get(drive_path)
            if drive is None:
                continue
            has_partitions.add(drive)

        for path, block in blocks.items():
            drive_path = block.Get('org.freedesktop.UDisks2.Block', 'Drive', dbus_interface=dbus.PROPERTIES_IFACE)
            drive = drives.get(drive_path)
            if drive is None:
                continue
            if drive in has_partitions:
                continue
            if block.Get('org.freedesktop.UDisks2.Block', 'ReadOnly', dbus_interface=dbus.PROPERTIES_IFACE):
                continue
            if not block.Get('org.freedesktop.UDisks2.Block', 'HintPartitionable', dbus_interface=dbus.PROPERTIES_IFACE):
                continue
            model = drive.Get('org.freedesktop.UDisks2.Drive', 'Model', dbus_interface=dbus.PROPERTIES_IFACE)
            device_bytes = block.Get('org.freedesktop.UDisks2.Block', 'Device', dbus_interface=dbus.PROPERTIES_IFACE)
            device_path = bytearray()
            for b in device_bytes:
                device_path.append(b)
            device = device_path.rstrip(b'\0').decode('utf-8')
            size = block.Get('org.freedesktop.UDisks2.Block', 'Size', dbus_interface=dbus.PROPERTIES_IFACE)

            ret.append((os.path.relpath(device, '/dev'), model, size))

        return ret


class SystemdUnit:
    def __init__(self, system_bus, object_path):
        self.system_bus = system_bus
        unit_obj = system_bus.get_object('org.freedesktop.systemd1', object_path)
        self.unit_interface = dbus.Interface(unit_obj, dbus_interface='org.freedesktop.systemd1.Unit')
        self.unit_interface.connect_to_signal('PropertiesChanged', self._properties_changed,  dbus_interface=dbus.PROPERTIES_IFACE)
        self._active_state = self.unit_interface.Get('org.freedesktop.systemd1.Unit', 'ActiveState', dbus_interface=dbus.PROPERTIES_IFACE)
        self._on_finished = None

    def active_state(self):
        return self._active_state

    def _properties_changed(self, *args, **kargs):
        self._active_state = self.unit_interface.Get('org.freedesktop.systemd1.Unit', 'ActiveState', dbus_interface=dbus.PROPERTIES_IFACE)
        self._check_callback()

    def _check_callback(self):
        if self._on_finished is not None:
            if self._active_state in ['active', 'failed']:
                cb = self._on_finished
                self._on_finished = None
                cb(self)

    def on_finished(self, callback):
        self._on_finished = callback
        self._check_callback()


class Systemd:
    def __init__(self, system_bus):
        self.system_bus = system_bus
        systemd_obj = system_bus.get_object('org.freedesktop.systemd1', '/org/freedesktop/systemd1')
        self.systemd_interface = dbus.Interface(systemd_obj, dbus_interface='org.freedesktop.systemd1.Manager')

    def start_unit(self, unit, mode):
        self.systemd_interface.StartUnit(unit, mode)
        path = self.systemd_interface.GetUnit(unit)
        return SystemdUnit(self.system_bus, path)


class Logind:
    def __init__(self, system_bus):
        self.system_bus = system_bus
        logind_obj = system_bus.get_object('org.freedesktop.login1', '/org/freedesktop/login1')
        self.logind_interface = dbus.Interface(logind_obj, dbus_interface='org.freedesktop.login1.Manager')

    @contextlib.contextmanager
    def inhibit(self, what, who, why, mode):
        fd = self.logind_interface.Inhibit(what, who, why, mode)
        try:
            yield
        finally:
            os.close(fd.take())


class InstallerException(dbus.DBusException):
    _dbus_error_name = 'org.gnome.Installer1.Exception'


class InstallerObject(dbus.service.Object):
    def __init__(self, system_bus, path, systemd, has_tpm2, mainloop, asyncioloop):
        self.system_bus = system_bus
        self.systemd = systemd
        dbus.service.Object.__init__(self, system_bus, path)
        self.polkit = Polkit(system_bus)
        self.mainloop = mainloop
        self.asyncioloop = asyncioloop
        self._install_task = None
        self.has_tpm2 = has_tpm2

    @dbus.service.method("org.gnome.Installer1",
                         in_signature='sb', out_signature='s')
    def Install(self, device, oem_install):
        if not self.polkit.check_authorization("org.gnome.Installer1.InstallAuth"):
            raise InstallerException("Install operation was not authorized")

        if oem_install or not self.has_tpm2:
            recovery_passphrase = None
        else:
            recovery_passphrase = generate_recovery_passphrase()

        if self._install_task is None or self._install_task.done():
            self._install_task = self.asyncioloop.create_task(self._do_install_handle_errors(device, recovery_passphrase, oem_install))
        else:
            raise InstallerException("Installation already running")

        print("Installation started.", file=sys.stderr)
        return recovery_passphrase if recovery_passphrase else ""

    async def _do_install_handle_errors(self, device, recovery_passphrase, oem_install):
        try:
            logind = Logind(self.system_bus)
            with logind.inhibit("shutdown:sleep", "GNOME OS Installer", f"Installing your system on {device}", "block"):
                await self._do_install(device, recovery_passphrase, oem_install)
        except InstallerException as e:
            print(f"Installation failed: {e}!", file=sys.stderr)
            self.InstallationFailed(str(e))
        except Exception as e:
            traceback.print_exception(e, file=sys.stderr)
            self.InstallationFailed("Unexpected error. See logs.")
        else:
            print("Installation completed!", file=sys.stderr)
            self.InstallationFinished()
        self.mainloop.quit()

    async def _enable_efi(self):
        efi_automount = self.systemd.start_unit("efi.automount", "replace")
        finished = self.asyncioloop.create_future()
        def on_finished(obj):
            finished.set_result(obj)
        efi_automount.on_finished(on_finished)
        await finished
        if efi_automount.active_state() != "active":
            raise InstallerException("cannot enable efi.automount")

    async def _swap_verity(self, new_usr, new_verity):
        swap_verity = await asyncio.create_subprocess_exec(
            "/usr/lib/gnomeos-installer/swap-verity", "usr", new_usr, new_verity
        )

        await swap_verity.communicate()
        if swap_verity.returncode != 0:
            raise InstallerException("swap-verity failed")

    async def _swap_root(self, root):
        if self.has_tpm2:
            cryptsetup = self.systemd.start_unit("systemd-cryptsetup@root.service", "replace")
            finished = self.asyncioloop.create_future()
            def on_finished(obj):
                finished.set_result(obj)
            cryptsetup.on_finished(on_finished)
            await finished

            if cryptsetup.active_state() != "active":
                raise InstallerException("cryptsetup failed")

            root = "/dev/mapper/root"

        btrfs_replace = await asyncio.create_subprocess_exec(
            "btrfs", "replace", "start", "1", root, "/"
        )

        await btrfs_replace.communicate()
        if btrfs_replace.returncode != 0:
            raise InstallerException("btrfs replace failed")

        replace_started = False
        for i in range(20):
            btrfs_status = await asyncio.create_subprocess_exec(
                "btrfs", "replace", "status", "/",
                stdout=asyncio.subprocess.PIPE
            )

            outs, _ = await btrfs_status.communicate()

            if outs.decode('ascii', errors='ignore').rstrip("\n") == "Never started":
                await asyncio.sleep(0.1)
            else:
                if btrfs_status.returncode != 0:
                    raise InstallerException("btrfs replace status failed")
                replace_started = True
                break

        if not replace_started:
            raise InstallerException("btrfs replace never started")

        btrfs_resize = await asyncio.create_subprocess_exec(
            "btrfs", "filesystem", "resize", "1:max", "/"
        )

        await btrfs_resize.communicate()
        if btrfs_resize.returncode != 0:
            raise InstallerException("btrfs replace failed")

        # because zram-generator created the btrfs with name zram1...
        btrfs_rename = await asyncio.create_subprocess_exec(
            "btrfs", "filesystem", "label", "/", "root"
        )

        await btrfs_rename.communicate()
        if btrfs_rename.returncode != 0:
            raise InstallerException("btrfs rename failed")

        zramctl_reset = await asyncio.create_subprocess_exec(
            "zramctl", "-r", "/dev/zram1"
        )

        await zramctl_reset.communicate()
        if zramctl_reset.returncode != 0:
            raise InstallerException("zramctl reset failed")

    async def _part_id(self, device, name):
        blkid = await asyncio.create_subprocess_exec(
            "blkid", "--match-tag", name, "--output", "value", device,
            stdout=asyncio.subprocess.PIPE
        )

        outs, _ = await blkid.communicate()

        if blkid.returncode != 0:
            raise InstallerException("blkid failed")

        return outs.decode('ascii').rstrip('\n')

    async def _pcrlock_unlock(self, config):
        systemd_pcrlock = await asyncio.create_subprocess_exec(
            "/usr/lib/systemd/systemd-pcrlock", f"unlock-{config}"
        )

        await systemd_pcrlock.communicate()

        if systemd_pcrlock.returncode != 0:
            raise InstallerException(f"systemd-pcrlock unlock-{config} failed")

    async def _setup_srk(self):
        systemd_tpm2_setup = await asyncio.create_subprocess_exec(
            "/usr/lib/systemd/systemd-tpm2-setup"
        )

        await systemd_tpm2_setup.communicate()

        if systemd_tpm2_setup.returncode != 0:
            raise InstallerException("systemd-tpm2-setup failed")

    async def _remove_policy(self):
        systemd_pcrlock = await asyncio.create_subprocess_exec(
            "/usr/lib/systemd/systemd-pcrlock", "remove-policy"
        )

        await systemd_pcrlock.communicate()

        if systemd_pcrlock.returncode != 0:
            raise InstallerException("systemd-pcrlock remove-policy failed")

    async def _make_policy(self):
        await asyncio.gather(
            self._setup_srk(),
            self._pcrlock_unlock("firmware-config"),
            self._remove_policy() # In case we are retrying...
        )

        # In case we are retrying...
        shutil.rmtree("/var/lib/gnomeos/install-credentials", ignore_errors=True)

        with tempfile.TemporaryDirectory(prefix="gnomeos", suffix="fake-esp") as fake_esp:
            env = os.environ.copy()
            env["SYSTEMD_ESP_PATH"] = fake_esp
            env["SYSTEMD_RELAX_ESP_CHECKS"] = "1"

            systemd_pcrlock = await asyncio.create_subprocess_exec(
                "/usr/lib/systemd/systemd-pcrlock", "make-policy", "--location=770",
                env=env
            )

            await systemd_pcrlock.communicate()

            if systemd_pcrlock.returncode != 0:
                raise InstallerException("systemd-pcrlock failed")

            new_creds = os.path.join(fake_esp, "loader/credentials")
            os.makedirs("/var/lib/gnomeos", exist_ok=True)

            shutil.copytree(new_creds, "/var/lib/gnomeos/install-credentials")

    async def _systemd_repart_configuration(self, path):
        template_env = {}

        if self.has_tpm2:
            template_env['encrypt'] = 'key-file+tpm2'
        else:
            template_env['encrypt'] = 'off'

        template_env['usr_uuid'] = await self._part_id("/dev/gnomeos-installer/usr", "PARTUUID")
        template_env['verity_uuid'] = await self._part_id("/dev/gnomeos-installer/verity", "PARTUUID")
        template_env['usr_label'] = await self._part_id("/dev/gnomeos-installer/usr", "PARTLABEL")
        template_env['verity_label'] = await self._part_id("/dev/gnomeos-installer/verity", "PARTLABEL")

        for name, template in repart_templates.items():
            with open(os.path.join(path, name), "w") as f:
                f.write(template.format(**template_env))

    async def _remove_loop(self):
        if not os.path.basename(os.readlink("/dev/gnomeos-installer/gpt")).startswith("loop"):
            return

        losetup_d = await asyncio.create_subprocess_exec(
            "losetup", "-d", "/dev/gnomeos-installer/gpt"
        )

        await losetup_d.communicate()

        if losetup_d.returncode != 0:
            raise InstallerException("losetup -d failed")

    async def _do_install(self,  device, recovery_passphrase, oem_install):
        def opener(path, flags):
            return os.open(path, flags, mode=0o600)

        if self.has_tpm2 and not oem_install:
            os.makedirs("/run/cryptsetup-keys.d", exist_ok=True)
            with open("/run/cryptsetup-keys.d/root.key", "w", opener=opener) as key:
                key.write(recovery_passphrase)

        os.makedirs("/run/gnomeos-pab", exist_ok=True)
        with open(f"/run/gnomeos-pab/{device}", "w"):
            pass

        if self.has_tpm2 and not oem_install:
            await self._make_policy()

        with tempfile.TemporaryDirectory(prefix="gnomeos", suffix=".repart.d") as repart_d:
            await self._systemd_repart_configuration(repart_d)

            args = [
                "--dry-run=no",
                "--empty=require", # For now, only empty disks.
                f"--definitions={repart_d}",
                "--json=short",
            ]

            if oem_install:
                args += [
                    "--defer-paritions=root",
                ]
            elif self.has_tpm2:
                args += [
                    "--key-file=/run/cryptsetup-keys.d/root.key",
                    "--tpm2-device=auto",
                ]

            systemd_repart = await asyncio.create_subprocess_exec(
                    "systemd-repart", *args, f"/dev/{device}",
                    stdout=asyncio.subprocess.PIPE
            )

            outs, _ = await systemd_repart.communicate()

        if systemd_repart.returncode != 0:
            raise InstallerException("Systemd repart")

        result = json.loads(outs)

        partitions = {}
        for partition in result:
            f = partition.get("file")
            if f:
                filename = os.path.basename(f)
                node = partition.get("node")
                partitions[filename] = node

        if not oem_install:
            if self.has_tpm2:
                shutil.rmtree("/var/lib/gnomeos/install-credentials", ignore_errors=True)
            await asyncio.gather(
                self._enable_efi(),
                self._swap_verity(partitions["21-usr-A.conf"], partitions["20-usr-verity-A.conf"]),
                self._swap_root(partitions["50-root.conf"]),
            )
            await self._remove_loop()


    @dbus.service.method("org.gnome.Installer1",
                         in_signature='', out_signature='a(sst)')
    def GetDevices(self):
        udisks = Udisks(self.system_bus)
        return udisks.get_disks()

    @dbus.service.signal(dbus_interface='org.gnome.Installer1',
                         signature='')
    def InstallationFinished(self):
        pass

    @dbus.service.signal(dbus_interface='org.gnome.Installer1',
                         signature='s')
    def InstallationFailed(self, error):
        pass

def main():
    systemd_analyze = subprocess.run(["systemd-analyze", "-q", "has-tpm2"])
    if systemd_analyze.returncode & ~0x7:
            raise InstallerException("systemd-analyze failed")

    has_tpm2 = True if systemd_analyze.returncode == 0 else False

    dbus.mainloop.glib.DBusGMainLoop(set_as_default=True)
    policy = GLibEventLoopPolicy()
    asyncio.set_event_loop_policy(policy)
    loop = policy.get_event_loop()

    system_bus = dbus.SystemBus()
    name = dbus.service.BusName('org.gnome.Installer1', system_bus)
    mainloop = GLib.MainLoop()
    obj = InstallerObject(system_bus, '/org/gnome/Installer', Systemd(system_bus), has_tpm2, mainloop, loop)

    mainloop.run()

if __name__ == '__main__':
    main()
