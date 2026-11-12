kind: meson

sources:
- kind: git_repo
  url: gnome:totem-pl-parser.git
  track: master
  ref: 3.26.7-5-g506eb208084e51ff47bced13f3806af3c3c4ad5d

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
