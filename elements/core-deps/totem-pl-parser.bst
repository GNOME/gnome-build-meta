kind: meson
sources:
- kind: git_repo
  url: gnome:totem-pl-parser.git
  track: master
  ref: V_3_26_6-29-gf8823aab94587276063c11b77db95470b514f583
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
