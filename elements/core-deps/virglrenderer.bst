kind: meson

sources:
- kind: git_repo
  url: freedesktop:virgl/virglrenderer.git
  track: '*.*'
  ref: 1.3.0-0-gca50e008863837e094747a69974dde3ae148aeaa

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/python3-pyyaml.bst

depends:
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
