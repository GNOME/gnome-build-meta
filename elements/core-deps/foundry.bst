kind: meson

sources:
- kind: tar
  url: gnome_downloads:foundry/1.0/foundry-1.0.beta.tar.xz
  ref: 1a80ecbbfb9e3c3ecc834e98cc4fea20145068e5d8cae3cb781c7cede766a8bd
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
