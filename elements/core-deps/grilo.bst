kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/grilo/0.3/grilo-0.3.6.tar.xz
  ref: 1e65ca82dd58020451417fde79310d4b940adc3f63ab59997419c52ed3bc9c91
depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
