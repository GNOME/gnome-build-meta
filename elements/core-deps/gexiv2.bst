kind: meson
sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.12/gexiv2-0.12.0.tar.xz
depends:
- sdk/glib.bst
- core-deps/exiv2.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
