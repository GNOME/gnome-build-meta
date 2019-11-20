kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgnome-games-support.git
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
