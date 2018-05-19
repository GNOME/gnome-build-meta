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
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-introspection=yes
