kind: autotools
sources:
- kind: git_repo
  url: github:libcheck/check.git
  track: '*.*.*'
  ref: 0.15.2-0-g11970a7e112dfe243a2e68773f014687df2900e8
# texinfo is complaining about missing symbols
# https://github.com/libcheck/check/issues/360
- kind: patch
  path: patches/libcheck/361.patch
build-depends:
- freedesktop-sdk.bst:components/texinfo.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  conf-local: >-
    --disable-timeout-tests
