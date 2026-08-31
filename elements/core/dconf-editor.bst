kind: meson

sources:
- kind: git_repo
  url: gnome:dconf-editor.git
  track: master
  ref: 49.0-41-gf597a16fd4a6aa983c12143d991b214d1653cc38

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
