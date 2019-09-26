kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-nettool.git
  track: master
depends:
- core-deps/libgtop.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
