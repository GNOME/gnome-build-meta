kind: meson
sources:
- kind: git_tag
  url: gnome:gom.git
  track: master
  ref: 0.4-17-g90a2e73e9b9f54b5a64210989a741503b406edbf
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
