kind: meson
sources:
- kind: git_repo
  url: gnome:totem-pl-parser.git
  track: master
  ref: V_3_26_6-30-g51b843912dc7bc43f371f1d88901a38ff2090b43
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
