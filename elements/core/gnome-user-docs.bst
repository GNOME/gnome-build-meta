kind: autotools
sources:
- kind: git_tag
  url: https://gitlab.gnome.org/GNOME/gnome-user-docs.git
  track: master
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
