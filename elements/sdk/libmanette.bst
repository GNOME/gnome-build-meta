kind: meson
sources:
- kind: git_tag
  url: gnome:libmanette.git
  track: master
  ref: 0.2.6-3-g003c2e84d95357bbbef72fb395ef85f1650097a3

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
