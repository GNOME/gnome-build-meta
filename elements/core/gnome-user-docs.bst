kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 50.0-0-gd952a13dd47135e3d8f2d4355d8e6f321adb7c55
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
