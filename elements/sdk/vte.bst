kind: autotools
sources:
- kind: git
  url: git_gnome_org:vte
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/vala.bst
  type: build
- base.bst
variables:
  conf-local: --enable-introspection=yes
