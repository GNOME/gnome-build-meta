kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/git-minimal.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- sdk/libsoup.bst
- core-deps/NetworkManager.bst

sources:
- kind: git_tag
  url: github:endlessm/mogwai.git
  track: master
  track-extra:
  - eos3.6
  - eos3.7
