subdir('po')

gnome.compile_resources(
  'org.gnome.Installer',
  'gresources.xml',
  gresource_bundle: true,
  install_dir: get_option('datadir') / 'gnomeos-installer',
  install: true,
)

install_data(
  'installer.py',
  install_mode: ['rwxr-xr-x'],
  install_dir: get_option('prefix') / 'lib' / 'gnomeos-installer',
)

i18n.merge_file(
  input: 'org.gnome.Installer.desktop.in',
  output: 'org.gnome.Installer.desktop',
  type: 'desktop',
  po_dir: 'po',
  install: true,
  install_dir: get_option('datadir') / 'gnomeos-live' / 'data' / 'applications',
)

install_data(
  'org.gnome.Installer.service',
  install_dir: get_option('datadir') / 'dbus-1' / 'services',
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

install_data(
  'data/icons/hicolor/scalable/apps/org.gnome.Installer.Devel.svg',
  'data/icons/hicolor/scalable/apps/org.gnome.Installer.svg',
  install_dir: get_option('datadir') / 'icons' / 'hicolor' / 'scalable' / 'apps',
)

install_data(
  'data/icons/hicolor/symbolic/apps/org.gnome.Installer-symbolic.svg',
  install_dir: get_option('datadir') / 'icons' / 'hicolor' / 'symbolic' / 'apps',
)

install_data(
  'data/icons/hicolor/symbolic/apps/org.gnome.Installer-symbolic.svg',
  rename: 'org.gnome.Installer.Devel-symbolic.svg',
  install_dir: get_option('datadir') / 'icons' / 'hicolor' / 'symbolic' / 'apps',
)
