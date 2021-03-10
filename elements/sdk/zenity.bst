kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/zenity.git
  track: master
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
