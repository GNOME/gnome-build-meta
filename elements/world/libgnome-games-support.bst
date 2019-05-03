kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgnome-games-support.git
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
