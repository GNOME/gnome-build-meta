kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:chergert/foundry.git
  track: main
  ref: fcbcc5cc0f32c8b6b2bca12b60690d73c83c3d36

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/jsonrpc-glib.bst
- core-deps/libpeas.bst
- gnomeos-deps/deviced.bst
- sdk/glib.bst
- sdk/libdex.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/flatpak-builder.bst
- freedesktop-sdk.bst:components/gnutls.bst
