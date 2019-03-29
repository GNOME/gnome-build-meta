kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:parted/parted-3.2.tar.xz
  ref: 858b589c22297cacdf437f3baff6f04b333087521ab274f7ab677cb8c6bb78e4
- kind: patch
  path: files/parted/include-sysmacros.patch
depends:
- core-deps/lvm2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
