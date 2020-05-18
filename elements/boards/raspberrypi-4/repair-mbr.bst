kind: manual

sources:
- kind: local
  path: files/boards/raspberrypi-4/repair-mbr/module-setup.sh
- kind: local
  path: files/boards/raspberrypi-4/repair-mbr/repair-mbr.service
- kind: local
  path: files/boards/raspberrypi-4/repair-mbr/repair-mbr.sh

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  dir: "%{indep-libdir}/dracut/modules.d/50repair-mbr"

config:
  install-commands:
  - install -Dm755 -t "%{install-root}%{dir}" module-setup.sh repair-mbr.sh
  - install -Dm644 -t "%{install-root}%{dir}" repair-mbr.service
