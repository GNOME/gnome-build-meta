kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.36/vala-0.36.20.tar.xz
depends:
- filename: base/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
