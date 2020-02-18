kind: meson
sources:
- kind: tar
  url: gnome_downloads:json-glib/1.4/json-glib-1.4.4.tar.xz
  ref: 720c5f4379513dc11fd97dc75336eb0c0d3338c53128044d9fabec4374f4bc47
depends:
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
