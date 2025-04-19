kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:chergert/foundry.git
  track: main
  ref: b7ef039652c0350f7929029e8a475437f7a7c53f

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
