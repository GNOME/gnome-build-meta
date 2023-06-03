kind: import

sources:
- kind: local
  path: files/vm/secure-dracut-modules

config:
  target: '%{indep-libdir}/dracut/modules.d'
