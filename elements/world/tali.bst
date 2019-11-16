kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/tali.git
  track: master
depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
