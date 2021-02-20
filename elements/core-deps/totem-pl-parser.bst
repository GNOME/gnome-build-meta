kind: meson
sources:
- kind: tar
  url: gnome_downloads:totem-pl-parser/3.26/totem-pl-parser-3.26.5.tar.xz
  ref: 5370de46f2e848221779275479b96ac39115b1efd2b0293d4afa87e22c8c528c
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
