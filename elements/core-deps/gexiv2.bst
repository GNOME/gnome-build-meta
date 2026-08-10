kind: meson

sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.16/gexiv2-0.16.2.tar.xz
  ref: aad9e240fdffbe85e390f46ee0a567e251baea5c29c3d8690260388683dc8d0a
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/pygobject.bst
- sdk/vala.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
