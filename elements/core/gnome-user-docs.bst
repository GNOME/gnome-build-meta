kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 46.1-45-ga7320ad577a780d9dd489b97f730ebc0628904c8
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
