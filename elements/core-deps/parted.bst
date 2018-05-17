kind: autotools
sources:
- kind: tar
  url: http://ftp.gnu.org/gnu/parted/parted-3.2.tar.xz
depends:
- core-deps/lvm2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
