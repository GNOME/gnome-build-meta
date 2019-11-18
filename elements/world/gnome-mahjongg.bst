kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-mahjongg.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
