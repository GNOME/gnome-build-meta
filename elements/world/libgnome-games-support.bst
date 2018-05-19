kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgnome-games-support
  track: master
depends:
- core-deps/libgee.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
