kind: autotools
sources:
- kind: tar
  url: http://ftp.gnu.org/gnu/parted/parted-3.2.tar.xz
  ref: 858b589c22297cacdf437f3baff6f04b333087521ab274f7ab677cb8c6bb78e4
depends:
- core-deps/lvm2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
