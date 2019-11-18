kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-tetravex.git
  track: master
depends:
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
