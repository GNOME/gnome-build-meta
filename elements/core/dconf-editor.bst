kind: meson

sources:
- kind: git_repo
  url: gnome:dconf-editor.git
  track: master
  ref: 49.0-9-gd0df369d8830bf193538d5d59dd354c46be38ced

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
