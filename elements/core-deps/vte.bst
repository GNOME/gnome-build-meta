kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vte/0.53/vte-0.53.0.tar.xz
  ref: c319eb34e9c64c78cd4940cde0892bd18784bcdcaaa7a23a9c8ec6052317a130
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-introspection=yes
