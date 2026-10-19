project(
  'gnomeos-live',
  'c',
  'rust',
  default_options: [
    'c_std=gnu17',
  ],
)

systemd = dependency('systemd')
devmapper = dependency('devmapper')
udev = dependency('udev')
gnome = import('gnome')
libbtrfsutil = dependency('libbtrfsutil')
mount = dependency('mount')

common = static_library(
  'common',
  [
    'kernel-cmdline.c',
    'kmsg.c',
  ],
  install : false,
)

executable(
  'gnomeos-generator',
  [
    'generator.c',
  ],
  dependencies : [libbtrfsutil, mount],
  link_with : [common],
  install_dir : systemd.get_variable(pkgconfig : 'systemdsystemgeneratordir'),
  install : true,
)

executable(
  'env-gnomeos-live',
  [
    'env-generator.c',
  ],
  link_with : [common],
  install_dir : systemd.get_variable(pkgconfig : 'systemdutildir') / 'user-environment-generators',
  install : true,
)

executable(
  'swap-verity',
  [
    'swap-verity.c',
  ],
  dependencies : [devmapper],
  install_dir: get_option('prefix') / 'lib' / 'gnomeos-installer',
  install: true,
)

subdir('rules.d')

systemdsystemunitdir = systemd.get_variable(pkgconfig : 'systemdsystemunitdir')

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

tmpfilesdir = systemd.get_variable(pkgconfig : 'tmpfilesdir')

install_data(
  'gnomeos-subvolumes.conf',
  install_dir : tmpfilesdir
)

install_data(
  'gnomeos-subvolumes.service',
  install_dir : systemdsystemunitdir
)

subdir('proto-installer')

cargo  = find_program('cargo')

cargo_tgt = custom_target(
  'cargo',
  build_by_default: true,
  output: [
    'installer-daemon',
  ],
  install: true,
  install_dir: [
    get_option('prefix') / 'lib' / 'gnomeos-installer',
  ],
  env: {
    'CARGO': cargo.full_path(),
    'CARGO_HOME': meson.current_build_dir() / 'cargo-home',
    'CARGO_TARGET_DIR': meson.current_build_dir() / 'target',
    'MANIFEST': meson.current_source_dir() / 'Cargo.toml',
  },
  command: [
    meson.current_source_dir() / 'run-cargo.sh', '@OUTPUT@',
  ]
)
