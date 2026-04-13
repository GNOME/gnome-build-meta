kind: meson
sources:
- kind: tar
  url: gnome_downloads:totem-pl-parser/3.26/totem-pl-parser-3.26.7.tar.xz
  ref: 60d517c1acabe54ae337f64451264fc76730696eaae26b5480fb37166689b5f3
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
