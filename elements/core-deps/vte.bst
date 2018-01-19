kind: autotools
sources:
- kind: git
  url: git_gnome_org:vte
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/pcre2.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-introspection=yes
