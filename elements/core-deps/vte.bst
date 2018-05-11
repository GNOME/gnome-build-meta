kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vte/0.52/vte-0.52.1.tar.xz
  ref: b0fd4c34905adcb77a1c8a2e4fc1677c79f1115aaea49705b9c8976523386ad3
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/pcre2.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-introspection=yes
