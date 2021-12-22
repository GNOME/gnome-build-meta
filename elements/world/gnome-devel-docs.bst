kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-devel-docs.git
  track: master

build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
