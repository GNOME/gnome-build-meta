kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:mpfr/mpfr-4.0.1.tar.xz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
config:
  install-commands:
    (>):
    - rm "%{install-root}%{infodir}/dir"
