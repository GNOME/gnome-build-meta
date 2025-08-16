kind: meson

sources:
- kind: git_repo
  url: freedesktop:virgl/virglrenderer.git
  track: '*.*'
  ref: 1.1.1-0-g0f1f43929724a6a414c01a29bc51feccb445c2f0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/python3-pyyaml.bst

depends:
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
