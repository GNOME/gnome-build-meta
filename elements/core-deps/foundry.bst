kind: meson

sources:
- kind: tar
  url: gnome_downloads:foundry/1.0/foundry-1.0.alpha.tar.xz
  ref: 486fd085b9fe642e3d5b661ad25026f9a8b929732232695c6e073cd1a6ab0c12
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/cmark.bst
- core-deps/gom.bst
- core-deps/jsonrpc-glib.bst
- core-deps/libgit2.bst
- core-deps/libpeas.bst
- core-deps/libspelling.bst
- core-deps/template-glib.bst
- sdk/glib.bst
- sdk/gtksourceview.bst
- sdk/libdex.bst
- sdk/sysprof-minimal.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/flatpak-builder.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
