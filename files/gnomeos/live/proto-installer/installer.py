#!/usr/bin/env python3

import gi
gi.require_version('Gtk', '4.0')
gi.require_version('Adw', '1')
from gi.repository import Gtk, Adw, GObject, Gio, GLib
import dbus
import dbus.mainloop.glib
import sys
import os


gresource = Gio.Resource.load('/usr/share/gnomeos-installer/org.gnome.Installer.gresource')
Gio.Resource._register(gresource)


class Udisks:
    def __init__(self):
        self.system_bus = dbus.SystemBus()
        udisks_obj = self.system_bus.get_object('org.freedesktop.UDisks2', '/org/freedesktop/UDisks2')
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
            invalid = None
            drive_path = block.Get('org.freedesktop.UDisks2.Block', 'Drive', dbus_interface=dbus.PROPERTIES_IFACE)
            drive = drives.get(drive_path)
            if drive is None:
                continue
            if drive in has_partitions:
                invalid = "<b>Disk has partitions</b>\nTo use this disk, you first need to format it in GNOME Disks."
            if block.Get('org.freedesktop.UDisks2.Block', 'ReadOnly', dbus_interface=dbus.PROPERTIES_IFACE):
                invalid = "<b>Disk is read-only</b>"
            if not block.Get('org.freedesktop.UDisks2.Block', 'HintPartitionable', dbus_interface=dbus.PROPERTIES_IFACE):
                invalid = "<b>Disk cannot be partitioned</b>"
            model = drive.Get('org.freedesktop.UDisks2.Drive', 'Model', dbus_interface=dbus.PROPERTIES_IFACE)
            device_bytes = block.Get('org.freedesktop.UDisks2.Block', 'Device', dbus_interface=dbus.PROPERTIES_IFACE)
            device_path = bytearray()
            for b in device_bytes:
                device_path.append(b)
            device = device_path.rstrip(b'\0').decode('utf-8')
            size = block.Get('org.freedesktop.UDisks2.Block', 'Size', dbus_interface=dbus.PROPERTIES_IFACE)

            media = drive.Get('org.freedesktop.UDisks2.Drive', 'MediaCompatibility', dbus_interface=dbus.PROPERTIES_IFACE)

            ret.append((os.path.relpath(device, '/dev'), model, size, media, invalid))

        return ret

def human_readable_size(size):
    for suffix in ["B", "KB", "MB", "GB", "TB"]:
        if size < 10 and suffix != "B":
            return f"{size:.1f}{suffix}"
        if size < 1024 or suffix == "TB":
            r = round(size)
            return f"{r}{suffix}"
        size /= 1024

class InstallableDisk(GObject.GObject):
    __gtype_name__ = "InstallableDisk"

    device = GObject.Property(type=GObject.TYPE_STRING, default="")
    description = GObject.Property(type=GObject.TYPE_STRING, default="")

    def __init__(self, device, description, size):
        super().__init__()

        self.device = device
        if size == 0:
            self.description = description
        else:
            s = human_readable_size(size)
            self.description = f"{description} ({s})"

class Installer:
    def __init__(self, on_finished, on_error):
        self._on_finished = on_finished
        self._on_error = on_error
        self.system_bus = dbus.SystemBus()
        obj = self.system_bus.get_object('org.gnome.Installer1', '/org/gnome/Installer')
        self._installer = dbus.Interface(obj, dbus_interface='org.gnome.Installer1')
        self._installer.connect_to_signal('InstallationFinished', self._installation_finished)
        self._installer.connect_to_signal('InstallationFailed', self._installation_failed)

    def install(self, device, oem_install):
        return self._installer.Install(device, oem_install)

    def _installation_finished(self):
        self._on_finished()

    def _installation_failed(self, message):
        self._on_error(message)


@Gtk.Template(resource_path="/org/gnome/os/proto-installer/install-button.ui")
class InstallButton(Gtk.Button):
    __gtype_name__ = "InstallButton"

    @Gtk.Template.Callback()
    def doInstall(self, *args):
        selected_row = self._selector.DiskList.get_selected_row()
        recovery_key = self._installer.install(selected_row.get_device_name(), self._oem_mode)
        self._app.display_recovery(recovery_key)

    def __init__(self, app, installer, selector, oem_mode):
        super().__init__()
        self._app = app
        self._installer = installer
        self._selector = selector
        self._oem_mode = oem_mode

@Gtk.Template(resource_path="/org/gnome/os/proto-installer/disk-selector.ui")
class DiskSelector(Adw.NavigationPage):
    __gtype_name__ = "DiskSelector"

    DiskList = Gtk.Template.Child()

@Gtk.Template(resource_path="/org/gnome/os/proto-installer/status-display.ui")
class StatusDisplay(Adw.NavigationPage):
    __gtype_name__ = "StatusDisplay"

    Spinner = Gtk.Template.Child()
    StatusPage = Gtk.Template.Child()
    RecoveryKey = Gtk.Template.Child()
    RecoveryKeyDisplay = Gtk.Template.Child()

@Gtk.Template(resource_path="/org/gnome/os/proto-installer/installer-window.ui")
class InstallerWindow(Adw.ApplicationWindow):
    __gtype_name__ = "InstallerWindow"

    Header = Gtk.Template.Child()
    ToolbarView = Gtk.Template.Child()
    NavigationView = Gtk.Template.Child()

@Gtk.Template(resource_path="/org/gnome/os/proto-installer/disk-row.ui")
class DiskRow(Adw.ActionRow):
    __gtype_name__ = "DiskRow"

    def __init__(self, name, description, size, media, invalid):
        super().__init__()
        self._device_name = name
        self.set_title(description)
        self.set_subtitle(human_readable_size(size))
        if invalid is not None:
            self.set_selectable(False)
            self.add_suffix(WarningIcon(invalid))

        icon = 'drive-harddisk-symbolic'
        for m in media:
            if m.startswith('flash'):
                icon = 'media-flash-symbolic'
                break
            if m == 'thumb':
                icon = 'drive-harddisk-usb-symbolic'
                break
            if m.startswith('floppy'):
                icon = 'media-floppy-symbolic'
                break
            if m.startswith('optical'):
                icon = 'media-optical-symbolic'
                break
        icon_widget = Gtk.Button.new()
        icon_widget.set_icon_name(icon)
        icon_widget.set_has_frame(False)
        icon_widget.set_can_target(False)
        self.add_prefix(icon_widget)

    def get_device_name(self):
        return self._device_name


@Gtk.Template(resource_path="/org/gnome/os/proto-installer/warning-icon.ui")
class WarningIcon(Gtk.Box):
    __gtype_name__ = "WarningIcon"

    WarningLabel = Gtk.Template.Child()

    def __init__(self, text):
        super().__init__()
        self.WarningLabel.set_markup(text)


class InstallerApp(Adw.Application):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.connect('activate', self.on_activate)
        self.add_main_option('send-notification', 0, GLib.OptionFlags.NONE, GLib.OptionArg.NONE, "Send notification instead of starting installer", None)
        self.add_main_option('oem-mode', 0, GLib.OptionFlags.NONE, GLib.OptionArg.NONE, "Install in OEM mode", None)
        self.connect('handle-local-options', self.handle_local_options)
        self.install_action = Gio.SimpleAction.new('install', None)
        self.install_action.connect('activate', self.on_activate_installer)
        self.add_action(self.install_action)
        self.notify_mode = False
        self.om_mode = False

    def _on_finished(self):
        self._status_content.Spinner.set_visible(False)
        self._status_content.StatusPage.set_icon_name("checkmark-symbolic")
        self._status_content.StatusPage.set_description("Installation finished.")

    def _on_error(self, message):
        self._status_content.Spinner.set_visible(False)
        self._status_content.StatusPage.set_icon_name("computer-fail-symbolic")
        self._status_content.StatusPage.set_description(f"Installation failed: {message}.")

    def display_recovery(self, key):
        self.win.Header.remove(self._install_button)
        self._status_content = StatusDisplay()
        if key:
            self._status_content.RecoveryKey.set_label(key)
            self._status_content.RecoveryKeyDisplay.set_visible(True)
        else:
            self._status_content.RecoveryKeyDisplay.set_visible(False)
        self._status_content.StatusPage.set_icon_name("computer-symbolic")
        self._status_content.StatusPage.set_description("Installing...")
        self.win.NavigationView.push(self._status_content)

    def _disk_selected(self, from_list, selected):
        self._install_button.set_can_target(True)

    def handle_local_options(self, app, option):
        self.oem_mode = bool(option.lookup_value('oem-mode'))
        self.notify_mode = bool(option.lookup_value('send-notification'))
        return -1

    def nothing(self):
        return True

    def on_activate(self, app):
        if self.notify_mode:
            notification = Gio.Notification.new("Install GNOME OS")
            notification.set_body("Your session is not saved to disk. If you want to keep your session, please install GNOME OS to a disk.")
            notification.set_default_action('app.install')
            self.send_notification('start-installer', notification)
        else:
            self.install_action.activate(None)

    def on_activate_installer(self, app, parameter):
        self.installer = Installer(self._on_finished, self._on_error)
        #self.installer = None
        self.udisks = Udisks()

        self.win = InstallerWindow()
        self.win.set_application(self)
        disk_selector = DiskSelector()

        for name, description, size, media, invalid in self.udisks.get_disks():
            disk_selector.DiskList.append(DiskRow(name, description, size, media, invalid))

        disk_selector.DiskList.connect("row-selected", self._disk_selected)

        self._install_button = InstallButton(self, self.installer, disk_selector, self.oem_mode)
        self._install_button.set_can_target(False)
        self.win.add_css_class("devel")
        self.win.Header.pack_end(self._install_button)
        self.win.NavigationView.push(disk_selector)
        self.win.present()

if __name__ == '__main__':
    dbus.mainloop.glib.DBusGMainLoop(set_as_default=True)
    app = InstallerApp(application_id="org.gnome.Installer")
    app.run(sys.argv)
