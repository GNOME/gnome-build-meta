kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/graphene/1.8/graphene-1.8.2.tar.xz
  ref: b3fcf20996e57b1f4df3941caac10f143bb29890a42f7a65407cd19271fc89f7
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
