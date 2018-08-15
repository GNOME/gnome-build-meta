depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- core-deps/totem-pl-parser.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 1e65ca82dd58020451417fde79310d4b940adc3f63ab59997419c52ed3bc9c91
  url: https://download.gnome.org/sources/grilo/0.3/grilo-0.3.6.tar.xz
