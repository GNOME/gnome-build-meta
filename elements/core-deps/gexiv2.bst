kind: meson

sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.16/gexiv2-0.16.0.tar.xz
  ref: d96f895f24539f966f577b2bb2489ae84f8232970a8d0c064e4a007474a77bbb
build-depends:
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
