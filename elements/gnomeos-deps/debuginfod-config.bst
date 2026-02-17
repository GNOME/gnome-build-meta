kind: import

sources:
- kind: local
  path: files/environment.d/90-debuginfod.conf

config:
  target: "%{indep-libdir}/environment.d/90-debuginfod.conf"
