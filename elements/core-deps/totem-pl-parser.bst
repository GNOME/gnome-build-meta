kind: meson

sources:
- kind: git_repo
  url: gnome:totem-pl-parser.git
  track: master
  ref: 3.26.7-3-gd644ef2e5eb82c55efc55809b18a78f5868b8f1b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
