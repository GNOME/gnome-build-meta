kind: meson

sources:
- kind: tar
  url: freedesktop_files:virgl/virglrenderer/-/archive/virglrenderer-1.0.1/virglrenderer-virglrenderer-1.0.1.tar.bz2
  ref: 940b3b9a9cc91ba241182c8211f829e594b36745352fec4fc3c9bf22675ca392

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
