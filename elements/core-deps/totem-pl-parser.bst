kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/totem-pl-parser/3.26/totem-pl-parser-3.26.2.tar.xz
  ref: d386acf965a44597e25ddee4a42ccde3c649a55b657e3a605648815b70861c3a
depends:
- core-deps/gmime3.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
