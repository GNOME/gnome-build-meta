kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-devel-docs.git
  track: master
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
