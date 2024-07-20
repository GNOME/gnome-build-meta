kind: meson

sources:
- kind: git_repo
  url: gnome:dconf-editor.git
  track: master
  ref: 45.0-59-g759936d5877e831c3d88c3665eb5ebec4da31c27

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
