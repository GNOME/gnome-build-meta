kind: import

config:
  target: '%{datadir}/polkit-1/rules.d'

sources:
- kind: local
  path: files/gnomeos/superguest/super-guest.rules
