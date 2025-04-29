#!/usr/bin/env python3

import gi
gi.require_version('Gtk', '4.0')
gi.require_version('Adw', '1')
from gi.repository import Gtk, Adw, GObject, Gio, GLib
import dbus
import dbus.mainloop.glib
import sys
import os
import gettext
import locale

gettext.install('org.gnome.Installer')
locale.textdomain('org.gnome.Installer')


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
        partition_table_type = {}

        for path, interfaces in self.objman_interface.GetManagedObjects().items():
            if 'org.freedesktop.UDisks2.Drive' in interfaces:
                drives[path] = self.system_bus.get_object('org.freedesktop.UDisks2', path)
            if 'org.freedesktop.UDisks2.Block' in interfaces and 'org.freedesktop.UDisks2.Partition' not in interfaces:
                block = self.system_bus.get_object('org.freedesktop.UDisks2', path)
                blocks[path] = block
                if 'org.freedesktop.UDisks2.PartitionTable' in interfaces:
                    partition_table_type[path] = block.Get('org.freedesktop.UDisks2.PartitionTable', 'Type', dbus_interface=dbus.PROPERTIES_IFACE)

        for path, block in blocks.items():
            drive_path = block.Get('org.freedesktop.UDisks2.Block', 'Drive', dbus_interface=dbus.PROPERTIES_IFACE)
            drive = drives.get(drive_path)
            if drive is None:
                continue
            model = drive.Get('org.freedesktop.UDisks2.Drive', 'Model', dbus_interface=dbus.PROPERTIES_IFACE)
            device_bytes = block.Get('org.freedesktop.UDisks2.Block', 'Device', dbus_interface=dbus.PROPERTIES_IFACE)
            device_path = bytearray()
            for b in device_bytes:
                device_path.append(b)
            device = device_path.rstrip(b'\0').decode('utf-8')
            size = block.Get('org.freedesktop.UDisks2.Block', 'Size', dbus_interface=dbus.PROPERTIES_IFACE)

            invalid = None
            if path in partition_table_type:
                invalid = ('error', _("<b>Disk has a partition table.</b>\nTo use this disk, you first need to format it without partition table in GNOME Disks."))
            elif block.Get('org.freedesktop.UDisks2.Block', 'ReadOnly', dbus_interface=dbus.PROPERTIES_IFACE):
                invalid = ('error', _("<b>Disk is read-only</b>"))
            elif not block.Get('org.freedesktop.UDisks2.Block', 'HintPartitionable', dbus_interface=dbus.PROPERTIES_IFACE):
                invalid = ('error', _("<b>Disk cannot be partitioned</b>"))
            elif size != 0 and size < 10*1024*1024*1024:
                invalid = ('error', _("<b>Disk is too small.</b>"))
            elif size != 0 and size < 30*1024*1024*1024:
                invalid = ('warning', _("<b>Disk is small.</b>\nWe recommend to use a disk with at least 30GB."))
            elif size == 0:
                invalid = ('warning', _("<b>Size is unknown.</b>"))

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

@Gtk.Template(resource_path="/org/gnome/os/proto-installer/install-or-live.ui")
class InstallOrLive(Adw.NavigationPage):
    __gtype_name__ = "InstallOrLive"

    @Gtk.Template.Callback()
    def clicked_install(self, *args):
        self._on_install()

    @Gtk.Template.Callback()
    def clicked_try(self, *args):
        self._on_try()

    def __init__(self, on_try, on_install):
        super().__init__()
        self._on_try = on_try
        self._on_install = on_install

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
        if size != 0:
            self.set_subtitle(human_readable_size(size))
        if invalid is not None:
            if invalid[0] == 'warning':
                self.add_suffix(WarningIcon(invalid[1]))
            else:
                self.set_selectable(False)
                self.add_suffix(ErrorIcon(invalid[1]))

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


@Gtk.Template(resource_path="/org/gnome/os/proto-installer/error-icon.ui")
class ErrorIcon(Gtk.Box):
    __gtype_name__ = "ErrorIcon"

    ErrorLabel = Gtk.Template.Child()

    def __init__(self, text):
        super().__init__()
        self.ErrorLabel.set_markup(text)


class InstallerApp(Adw.Application):
    def __init__(self, mainloop, **kwargs):
        super().__init__(**kwargs)
        self.connect('activate', self.on_activate)
        self.add_main_option('wait-for-tour-mode', 0, GLib.OptionFlags.NONE, GLib.OptionArg.NONE, _("Wait for Tour to be finished"), None)
        self.add_main_option('oem-mode', 0, GLib.OptionFlags.NONE, GLib.OptionArg.NONE, _("Install in OEM mode"), None)
        self.connect('handle-local-options', self.handle_local_options)
        self.install_action = Gio.SimpleAction.new('install', None)
        self.install_action.connect('activate', self.on_activate_installer)
        self.add_action(self.install_action)
        self.wait_for_tour_mode = False
        self.om_mode = False
        self.mainloop = mainloop

    def _on_finished(self):
        self._status_content.Spinner.set_visible(False)
        self._status_content.StatusPage.set_icon_name("checkmark-symbolic")
        self._status_content.StatusPage.set_description(_("Installation finished."))

    def _on_error(self, message):
        self._status_content.Spinner.set_visible(False)
        self._status_content.StatusPage.set_icon_name("computer-fail-symbolic")
        self._status_content.StatusPage.set_description(_(f"Installation failed: {message}."))

    def display_recovery(self, key):
        self.win.Header.remove(self._install_button)
        self._status_content = StatusDisplay()
        if key:
            self._status_content.RecoveryKey.set_label(key)
            self._status_content.RecoveryKeyDisplay.set_visible(True)
        else:
            self._status_content.RecoveryKeyDisplay.set_visible(False)
        self._status_content.StatusPage.set_icon_name("computer-symbolic")
        self._status_content.StatusPage.set_description(_("Installing..."))
        self.win.NavigationView.push(self._status_content)

    def _disk_selected(self, from_list, selected):
        self._install_button.set_can_target(True)

    def handle_local_options(self, app, option):
        self.oem_mode = bool(option.lookup_value('oem-mode'))
        self.wait_for_tour_mode = bool(option.lookup_value('wait-for-tour-mode'))
        return -1

    def on_activate(self, app):
        if self.wait_for_tour_mode:
            self.hold()
            def on_name_owner_changed(name, old_owner, new_owner):
                if name == "org.gnome.Tour" and new_owner == "":
                    self.install_action.activate(None)
                    self.release()
                    return False
                else:
                    return True
            bus = dbus.SessionBus()
            dbus_obj = bus.get_object('org.freedesktop.DBus', '/org/freedesktop/DBus')
            dbus_obj.connect_to_signal('NameOwnerChanged', on_name_owner_changed, dbus_interface='org.freedesktop.DBus')
        else:
            self.install_action.activate(None)

    def on_activate_installer(self, app, parameter):
        self.installer = Installer(self._on_finished, self._on_error)
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
        def on_try():
            self.quit()
        def on_install():
            self.win.Header.pack_end(self._install_button)
            self.win.NavigationView.push(disk_selector)
        install_or_live = InstallOrLive(on_try, on_install)
        self.win.NavigationView.push(install_or_live)
        self.win.present()

if __name__ == '__main__':
    dbus.mainloop.glib.DBusGMainLoop(set_as_default=True)
    mainloop = GLib.MainLoop()
    app = InstallerApp(mainloop, application_id="org.gnome.Installer")
    app.run(sys.argv)
