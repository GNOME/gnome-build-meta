kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 46.1-18-gbe7eb709fd25d8502f8a0dac791c396b02cf5b8b
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
