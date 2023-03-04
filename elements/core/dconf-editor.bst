kind: meson

sources:
- kind: git_tag
  url: gnome:dconf-editor.git
  track: master
  ref: 43.0-9-g9508a68cd782a72e8e9345d0b504b2dfff5093db

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
