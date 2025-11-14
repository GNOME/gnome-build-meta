kind: autotools

sources:
- kind: git_repo
  url: github:libhangul/ibus-hangul.git
  track: '*.*'
  ref: 1.5.5-0-gaa4b71c69cf9d77466e9c6713c99d6bdffee6a68

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/ibus-daemon.bst
- gnomeos-deps/libhangul.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
