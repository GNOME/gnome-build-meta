kind: meson

sources:
- kind: git_repo
  url: github:ptomato/jasmine-gjs.git
  # FIXME: Before 47.alpha we will need to have a tarball or tag to depend on
  track: master
  ref: 3.10.1-5-gc524a1e420a73fdad661296d16b78686fb14223c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gjs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
