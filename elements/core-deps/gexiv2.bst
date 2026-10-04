kind: meson

sources:
- kind: git_repo
  url: gnome:gexiv2.git
  track: main
  ref: 0.16.2-11-g80723af7b01b2b18f54a1720783f9eaae971e3f9

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/pygobject.bst
- sdk/vala.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
