kind: meson

sources:
- kind: tar
  url: github_com:endlessm/mogwai/archive/Release_3.7.5.tar.gz

build-depends:
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
