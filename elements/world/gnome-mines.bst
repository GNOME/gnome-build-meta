kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-mines.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- world/libgnome-games-support.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
