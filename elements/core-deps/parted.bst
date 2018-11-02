kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:parted/parted-3.2.tar.xz
depends:
- core-deps/lvm2.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
