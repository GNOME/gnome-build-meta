kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:chergert/foundry.git
  track: main
  ref: 7271c38306ef609f95698e32cbcc3f3bca05b57e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gom.bst
- core-deps/jsonrpc-glib.bst
- core-deps/libgit2.bst
- core-deps/libpeas.bst
- core-deps/libspelling.bst
- gnomeos-deps/deviced.bst
- sdk/glib.bst
- sdk/gtksourceview.bst
- sdk/libdex.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/flatpak-builder.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
