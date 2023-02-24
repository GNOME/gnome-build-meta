kind: meson

sources:
- kind: git_tag
  url: gnome:dconf-editor.git
  track: master
  ref: 43.0-7-g73e396fef67723d2b0c3bf676c0cf3fe5550cbee

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
