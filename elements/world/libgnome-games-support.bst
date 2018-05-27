kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgnome-games-support
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libgee.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
