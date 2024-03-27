kind: meson
sources:
- kind: git_repo
  url: gnome:totem-pl-parser.git
  track: master
  ref: V_3_26_6-28-g7e3f4856d45820bf191728ba25a59a7fb2b8b5f9
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
