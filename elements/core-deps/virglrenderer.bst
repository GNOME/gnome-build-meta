kind: meson

sources:
- kind: tar
  url: tar_gitlab_freedesktop_org:/virgl/virglrenderer/-/archive/virglrenderer-0.9.1/virglrenderer-virglrenderer-0.9.1.tar.bz2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
