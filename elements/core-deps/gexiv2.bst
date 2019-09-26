kind: meson
sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.12/gexiv2-0.12.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-aux: build-aux
