project('gnome-defaultapps')

custom_target(
  input: 'quirks.toml',
  output: [
    'gnome-mimeapps.list',
    'gnome-intentapps.list',
  ],
  command: [
    find_program('python3'),
    files('generate.py'),
    '@INPUT@',
    '@OUTPUT@'
  ],
  install: true,
  install_dir: get_option('datadir') / 'applications'
)

