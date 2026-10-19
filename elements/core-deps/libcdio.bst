kind: autotools

sources:
- kind: git_repo
  url: github:libcdio/libcdio-C.git
  track: '*.*.*'
  exclude:
  - '*rc*'
  ref: 2.4.0-0-gee2f9e380e346d7a9c46ad71105353940101992a

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/texinfo.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --without-cdda-player
