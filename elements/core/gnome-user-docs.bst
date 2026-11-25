kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/51/gnome-user-docs-51.2.tar.xz
  ref: 07e541796e5aed29ab38f22edc4e085f78025f6c14f75c8764726dbdffaa97a1
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/yelp-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
