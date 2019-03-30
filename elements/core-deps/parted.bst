kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:parted/parted-3.2.tar.xz
- kind: patch
  path: files/parted/include-sysmacros.patch
depends:
- core-deps/lvm2.bst
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
