kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-user-docs.git
  track: master
  ref: 44.rc-22-gaf744fbe5afe4caf07c48410af166054b582e9f0
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
