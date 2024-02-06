kind: import

sources:
- kind: local
  path: files/vm/set-chassis-type/gnomeos.set-chassis-type@.service

config:
  target: '%{indep-libdir}/systemd/system'
