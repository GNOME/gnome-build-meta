#!/usr/bin/env python3

import gi
gi.require_version('Gtk', '4.0')
gi.require_version('Adw', '1')
from gi.repository import Gtk, Adw, GObject, Gio
import dbus
import dbus.mainloop.glib
import sys

gresource = Gio.Resource.load('/usr/share/gnomeos-installer/org.gnome.Installer.gresource')
Gio.Resource._register(gresource)

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

    def get_devices(self):
        return self._installer.GetDevices()

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
        recovery_key = self._installer.install(self._selector.DropDown.get_selected_item().device, self._selector.OEMInstall.get_active())
        self._app.display_recovery(recovery_key)

    def __init__(self, app, installer, selector):
        super().__init__()
        self._app = app
        self._installer = installer
        self._selector = selector

@Gtk.Template(resource_path="/org/gnome/os/proto-installer/disk-selector.ui")
class DiskSelector(Gtk.CenterBox):
    __gtype_name__ = "DiskSelector"

    DropDown = Gtk.Template.Child()
    OEMInstall = Gtk.Template.Child()

@Gtk.Template(resource_path="/org/gnome/os/proto-installer/recovery-key-display.ui")
class RecoveryKeyDisplay(Gtk.CenterBox):
    __gtype_name__ = "RecoveryKeyDisplay"

    RecoveryKey = Gtk.Template.Child()
    InstallationStatus = Gtk.Template.Child()

@Gtk.Template(resource_path="/org/gnome/os/proto-installer/status-display.ui")
class StatusDisplay(Gtk.CenterBox):
    __gtype_name__ = "StatusDisplay"

    InstallationStatus = Gtk.Template.Child()

@Gtk.Template(resource_path="/org/gnome/os/proto-installer/installer-window.ui")
class InstallerWindow(Adw.ApplicationWindow):
    __gtype_name__ = "InstallerWindow"

    Header = Gtk.Template.Child()
    ToolbarView = Gtk.Template.Child()

class InstallerApp(Adw.Application):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.connect('activate', self.on_activate)

    def _on_finished(self):
        self._status_content.InstallationStatus.set_label("Installation finished.")

    def _on_error(self, message):
        self._status_content.InstallationStatus.set_label(f"Installation failed: {message}.")

    def display_recovery(self, key):
        self.win.Header.remove(self._install_button)
        if key:
            self._status_content = RecoveryKeyDisplay()
            self._status_content.RecoveryKey.set_label(key)
        else:
            self._status_content = StatusDisplay()
        self._status_content.InstallationStatus.set_label("Installing...")
        self.win.ToolbarView.set_content(self._status_content)

    def on_activate(self, app):
        self.installer = Installer(self._on_finished, self._on_error)

        self.win = InstallerWindow()
        self.win.set_application(self)
        disk_selector = DiskSelector()

        liststore = Gio.ListStore.new(InstallableDisk)

        desc_expr = Gtk.PropertyExpression.new(InstallableDisk, None, "description")
        disk_selector.DropDown.props.model = liststore
        disk_selector.DropDown.set_expression(desc_expr)
        for name, description, size in self.installer.get_devices():
            liststore.append(InstallableDisk(name, description, size))

        self._install_button = InstallButton(self, self.installer, disk_selector)
        self.win.Header.pack_end(self._install_button)
        self.win.ToolbarView.set_content(disk_selector)
        self.win.present()

if __name__ == '__main__':
    dbus.mainloop.glib.DBusGMainLoop(set_as_default=True)
    app = InstallerApp(application_id="org.gnome.Installer")
    app.run(sys.argv)
