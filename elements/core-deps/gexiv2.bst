kind: meson

sources:
- kind: git_repo
  url: gnome:gexiv2.git
  track: "*.*.*"
  ref: 0.16.1-0-g467ac9910ab8ae5d13ae6322e3d352d9982aac23

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/pygobject.bst
- sdk/vala.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
