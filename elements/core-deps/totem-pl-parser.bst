kind: meson
sources:
- kind: git_tag
  url: gnome:totem-pl-parser.git
  track: master
  ref: V_3_26_6-18-gf73f8b446ce249e9c6e795194b8108bed8d4dd3c
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
