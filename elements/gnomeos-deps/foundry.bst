kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:chergert/foundry.git
  track: main
  ref: 95b038b7c8be58f7a48b6465197fdad7de4e2c1d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gom.bst
- core-deps/jsonrpc-glib.bst
- core-deps/libgit2.bst
- core-deps/libpeas.bst
- gnomeos-deps/deviced.bst
- sdk/glib.bst
- sdk/libdex.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/flatpak-builder.bst
- freedesktop-sdk.bst:components/gnutls.bst
