install() {
  for rule in /usr/lib/udev/rules.d/*.rules; do
      install_file "${rule}"
  done
  for command in /usr/lib/udev/*; do
      if ! [ -d "${command}" ] && [ -x "${command}" ]; then
          install_file "${command}"
      fi
  done
  install_files /usr/bin/dmsetup /usr/bin/lvm
}
