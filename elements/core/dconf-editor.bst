kind: meson

sources:
- kind: git_tag
  url: gnome:dconf-editor.git
  track: master
  ref: 43.0-13-gd7d652a176736f6e621b9c43dba6b99d902c9bfe

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
