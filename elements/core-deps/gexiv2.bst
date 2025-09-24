kind: meson

sources:
- kind: git_repo
  url: gnome:gexiv2.git
  track: "*.*.*"
  ref: 0.16.0-0-g33ac4052bb4132e16fdf2bf043cbddca9c716be6

build-depends:
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
