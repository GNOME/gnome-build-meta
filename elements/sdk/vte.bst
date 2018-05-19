kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/vte
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-introspection=yes
