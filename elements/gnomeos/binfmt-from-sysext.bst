kind: import

config:
  target: '%{indep-libdir}/systemd/system/systemd-binfmt.service.d'

sources:
- kind: local
  path: files/gnomeos/binfmt-from-sysext.conf
