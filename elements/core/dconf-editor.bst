kind: meson

sources:
- kind: git_tag
  url: gnome:dconf-editor.git
  track: master
  ref: 43.0-8-gd141830b5bffb3a03053dea1179aa62ba595a53f

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
