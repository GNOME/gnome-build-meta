kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.36/vala-0.36.14.tar.xz
  ref: 31df542f37f78d8847c3675a76f691df9e8a6ccfd93045ca3a33cd25db3aa4d2
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-aux: build-aux
