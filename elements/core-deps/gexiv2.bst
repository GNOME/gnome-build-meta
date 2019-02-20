kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gexiv2/0.11/gexiv2-0.11.0.tar.xz
depends:
- core-deps/exiv2.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
