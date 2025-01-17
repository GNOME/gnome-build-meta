kind: import

sources:
- kind: local
  path: files/sysupdate-nvidia

config:
  target: '%{indep-libdir}/sysupdate.d'
