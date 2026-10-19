kind: meson

sources:
- kind: git_repo
  url: gnome:totem-pl-parser.git
  track: master
  ref: 3.26.7-4-g1ee80a881e33060850e0a93f33c6165d19dc3063

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
