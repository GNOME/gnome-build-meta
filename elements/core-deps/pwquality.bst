kind: autotools
sources:
- kind: tar
  url: github_com:libpwquality/libpwquality/releases/download/libpwquality-1.4.0/libpwquality-1.4.0.tar.bz2
depends:
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python-binary=python3
