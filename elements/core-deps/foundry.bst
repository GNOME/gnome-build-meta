kind: meson

sources:
- kind: tar
  url: gnome_downloads:foundry/1.0/foundry-1.0.rc.tar.xz
  ref: 4d5bc999154390bfcfec4abb119364b5d8340a58fa48efe9bb081e5d66e2a724
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/cmark.bst
- core-deps/editorconfig-core-c.bst
- core-deps/gom.bst
- core-deps/jsonrpc-glib.bst
- core-deps/libgit2.bst
- core-deps/libpeas.bst
- core-deps/libspelling.bst
- core-deps/template-glib.bst
- core-deps/vte.bst
- sdk/glib.bst
- sdk/gtksourceview.bst
- sdk/libdex.bst
- sdk/sysprof-minimal.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/flatpak-builder.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
