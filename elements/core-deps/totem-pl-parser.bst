kind: meson
sources:
- kind: git_repo
  url: gnome:totem-pl-parser.git
  track: master
  ref: V_3_26_6-27-g3a3023299ebd1c2faa621ea21016fb31e4d5a901
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gmime.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
