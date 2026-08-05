kind: meson

sources:
- kind: git_repo
  url: gnome:gexiv2.git
  track: "*.*.*"
  ref: 0.16.2-0-g3b30dae74e6cd30cc584b71482abd2a40ff5dc77

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/pygobject.bst
- sdk/vala.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
