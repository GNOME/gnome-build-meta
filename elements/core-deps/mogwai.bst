kind: meson

sources:
- kind: tar
  url: github_com:endlessm/mogwai/archive/Release_3.7.5.tar.gz

  ref: c270cf1a9594a05cf84fc7150aa5a91e0da24b0724486ed4828e4b56504a8972
build-depends:
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
