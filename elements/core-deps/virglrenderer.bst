kind: meson

sources:
- kind: tar
  url: 
    freedesktop_files:virgl/virglrenderer/-/archive/virglrenderer-1.1.1/virglrenderer-virglrenderer-1.1.1.tar.bz2
  ref: 8f0f4388de8a33e850cede06c5cef026b214a4d90206d8b211a2a5ba94f81160

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/python3-pyyaml.bst

depends:
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
