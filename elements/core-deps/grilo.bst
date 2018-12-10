kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/grilo/0.3/grilo-0.3.7.tar.xz
  ref: ea3baf71692df177649a968635ed2bc39855c34c327274245c240f726831e9b7
depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
