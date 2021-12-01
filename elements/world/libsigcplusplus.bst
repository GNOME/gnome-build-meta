kind: meson
sources:
- kind: git_tag
  url: github_com:libsigcplusplus/libsigcplusplus.git
  track: master
build-depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
