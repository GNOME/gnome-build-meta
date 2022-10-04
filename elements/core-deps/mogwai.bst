kind: meson

sources:
- kind: tar
  url: github_files:endlessm/mogwai/archive/refs/tags/Version_0.3.0.tar.gz
  ref: 9b2c6da0332b93d2d86ec519a1d93dd5dae5cef5f20d375f6837b6aa591d2bae
- kind: patch
  path: files/mogwai/9b2fad24f954af6b8b1036a75f95ca965279a10b.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/libgsystemservice.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dsoup2=false
