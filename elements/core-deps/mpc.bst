kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:mpc/mpc-1.1.0.tar.gz
depends:
- core-deps/mpfr.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
config:
  install-commands:
    (>):
    - rm "%{install-root}%{infodir}/dir"
