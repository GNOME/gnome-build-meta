kind: meson

sources:
- kind: git_repo
  url: freedesktop:virgl/virglrenderer.git
  track: '*.*'
  ref: 1.2.0-0-g500b41d5c8638f9b80dd558f4044f3301c7457a4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/python3-pyyaml.bst

depends:
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
