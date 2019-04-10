kind: meson
sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.10/gexiv2-0.10.8.tar.xz
depends:
- core-deps/exiv2.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
