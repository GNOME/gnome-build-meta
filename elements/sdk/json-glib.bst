kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/json-glib/1.4/json-glib-1.4.4.tar.xz
  ref: 720c5f4379513dc11fd97dc75336eb0c0d3338c53128044d9fabec4374f4bc47
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
