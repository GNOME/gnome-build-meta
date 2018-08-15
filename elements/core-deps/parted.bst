depends:
- core-deps/lvm2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 858b589c22297cacdf437f3baff6f04b333087521ab274f7ab677cb8c6bb78e4
  url: ftp_gnu_org:parted/parted-3.2.tar.xz
variables:
  conf-aux: build-aux
