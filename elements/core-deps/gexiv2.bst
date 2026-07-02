kind: meson

sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.16/gexiv2-0.16.1.tar.xz
  ref: 18e9a05c637a77e800b001d87f70e4d02a7ba41b7745400a314a1072a1ddc943
build-depends:
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
