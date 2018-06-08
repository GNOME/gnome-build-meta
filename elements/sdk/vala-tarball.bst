kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.36/vala-0.36.14.tar.xz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-aux: build-aux
