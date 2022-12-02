kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-user-docs.git
  track: master
  ref: 43.0-20-ga689940b7f0f3276a1f0a2f9703ad6c109fc9502
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
