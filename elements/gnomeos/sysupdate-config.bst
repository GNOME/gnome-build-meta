kind: import

sources:
- kind: local
  path: files/sysupdate

config:
  target: '%{indep-libdir}/sysupdate.d'
