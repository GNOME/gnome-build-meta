kind: meson
sources:
- kind: tar
  url: gnome_downloads:totem-pl-parser/3.26/totem-pl-parser-3.26.5.tar.xz
  ref: 5370de46f2e848221779275479b96ac39115b1efd2b0293d4afa87e22c8c528c
depends:
- core-deps/gmime.bst
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: components/libarchive.bst
  junction: freedesktop-sdk.bst
- filename: components/libgcrypt.bst
  junction: freedesktop-sdk.bst
- filename: components/libxml2.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
