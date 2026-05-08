kind: meson
sources:
- kind: git_repo
  url: gnome:totem-pl-parser.git
  track: master
  ref: 3.26.7-2-g10652d7f6714bd7108e0c4e24eb003b3262f3f86
build-depends:
- sdk/gobject-introspection.bst
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
