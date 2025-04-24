project('gnome-mimeapps')

custom_target(
  input: 'quirks.toml',
  output: 'gnome-mimeapps.list',
  command: [
    find_program('python3'),
    files('generate.py'),
    '@INPUT@',
    '@OUTPUT@'
  ],
  install: true,
  install_dir: get_option('datadir') / 'applications'
)

