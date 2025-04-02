gnome.compile_resources(
  'org.gnome.Installer',
  'gresources.xml',
  gresource_bundle: true,
  install_dir: get_option('datadir') / 'gnomeos-installer',
  install: true,
)

install_data(
  'installer.py',
  'installer-daemon.py',
  install_mode: ['rwxr-xr-x'],
  install_dir: get_option('prefix') / 'lib' / 'gnomeos-installer',
)

install_data(
  'org.gnome.Installer.desktop',
  install_dir: get_option('datadir') / 'gnomeos-live' / 'applications',
)

install_data(
  'org.gnome.Installer1.policy',
  install_dir: get_option('datadir') / 'polkit-1' / 'actions',
)

install_data(
  'org.gnome.Installer1.rules',
  install_dir: get_option('datadir') / 'polkit-1' / 'rules.d',
)

install_data(
  'org.gnome.Installer1.conf',
  install_dir: get_option('datadir') / 'dbus-1' / 'system.d',
)

install_data(
  'org.gnome.Installer1.service',
  install_dir: get_option('datadir') / 'dbus-1' / 'system-services',
)

systemdsystemunitdir = systemd.get_pkgconfig_variable('systemdsystemunitdir')

install_data(
  'gnomeos-installer.service',
  install_dir: systemdsystemunitdir,
)
