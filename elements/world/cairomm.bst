kind: autotools

sources:
- kind: git_tag
  url: git_freedesktop_org:cairo/cairomm.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- world/libsigcplusplus.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --disable-documentation
