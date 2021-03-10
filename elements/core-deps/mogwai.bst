kind: meson

sources:
- kind: tar
  url: github_com:endlessm/mogwai/archive/Release_3.7.5.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
