kind: meson

sources:
- kind: git_repo
  url: github:ptomato/jasmine-gjs.git
  # FIXME: Before 47.alpha we will need to have a tarball or tag to depend on
  track: master
  ref: 2.6.4-22-gf6a42dbdbf4d0790358cd17aac09b2d66a22c38c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gjs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
