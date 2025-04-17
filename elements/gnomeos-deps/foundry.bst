kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:chergert/foundry.git
  track: main
  ref: b2274f41ce5da0d857950249d43f83b0f82ccaac

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
