kind: meson

sources:
- kind: git_repo
  url: gnome:dconf-editor.git
  track: master
  ref: 45.0-81-g7df4c1fe17467f97d759f4d72a91ad371e7f24d4

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
