project(
  'gnomeos-live',
  'c',
  default_options: [
    'c_std=gnu17',
  ],
)

systemd = dependency('systemd')
devmapper = dependency('devmapper')
udev = dependency('udev')
gnome = import('gnome')

common = static_library(
  'common',
  [
    'kernel-cmdline.c',
    'kmsg.c',
  ],
  install : false,
)

executable(
  'gnomeos-live',
  [
    'generator.c',
  ],
  link_with : [common],
  install_dir : systemd.get_pkgconfig_variable('systemdsystemgeneratordir'),
  install : true,
)

subdir('rules.d')

systemdsystemunitdir = systemd.get_pkgconfig_variable('systemdsystemunitdir')

install_data(
  'live.conf',
  install_dir : systemdsystemunitdir / 'systemd-repart.service.d'
)

install_data(
  'live.conf',
  install_dir : systemdsystemunitdir / 'systemd-tpm2-setup.service.d'
)

install_data(
  'live.conf',
  install_dir : systemdsystemunitdir / 'systemd-tpm2-setup-early.service.d'
)

install_data(
  'live.conf',
  install_dir : systemdsystemunitdir / 'systemd-pcrlock-make-policy.service.d'
)
