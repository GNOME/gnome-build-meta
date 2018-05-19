kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/grilo
  track: master
depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
