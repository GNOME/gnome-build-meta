kind: meson
sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.12/gexiv2-0.12.0.tar.xz
  ref: 58f539b0386f36300b76f3afea3a508de4914b27e78f58ee4d142486a42f926a
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
