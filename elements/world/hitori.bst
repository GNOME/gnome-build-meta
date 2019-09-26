kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/hitori.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
