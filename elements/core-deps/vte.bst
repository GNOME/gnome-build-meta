kind: autotools
sources:
- url: https://download.gnome.org/sources/vte/0.51/vte-0.51.3.tar.xz
  kind: tar
  ref: 997325a738afe757aa3a558aba9bfd5c57d1b9f6e124c12bbd21d27aef381424
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/pcre2.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-introspection=yes
