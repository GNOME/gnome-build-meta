kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-chess.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
