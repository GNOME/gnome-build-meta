project(
  'zswap-generator',
  'rust',
)

install_symlink(
        'zswap-generator',
        install_dir: '/usr/lib/systemd/system-generators',
        pointing_to: '/usr/lib/zswap-generator/zswap-setup',
)

install_data(
        '50-zswap.conf',
        install_dir: '/usr/lib/sysctl.d',
)

cargo  = find_program('cargo')

cargo_tgt = custom_target(
  'cargo',
  build_by_default: true,
  output: [
    'zswap-setup',
  ],
  install: true,
  install_dir: [
    get_option('prefix') / 'lib' / 'zswap-generator',
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
