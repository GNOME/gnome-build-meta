kind: meson

sources:
- kind: git_tag
  url: gnome:dconf-editor.git
  track: master
  ref: 43.0-19-gf9dddf68d680748744c8d775377b60de55e01a2b

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
