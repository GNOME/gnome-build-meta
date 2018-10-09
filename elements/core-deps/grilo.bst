kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/grilo/0.3/grilo-0.3.6.tar.xz
depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
