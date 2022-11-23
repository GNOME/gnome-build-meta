kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-user-docs.git
  track: master
  ref: 43.0-16-g58ee4d5ce08a13431aa9d011da24a0e60fc64615
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
