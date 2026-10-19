kind: meson

sources:
- kind: git_repo
  url: gnome:dconf-editor.git
  track: master
  ref: 49.0-54-g94de10fca3fcd16bcda479aaa62146d7c98859ba

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- core-deps/dconf.bst
- core-deps/libhandy.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
