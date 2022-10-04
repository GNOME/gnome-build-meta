kind: meson
sources:
- kind: git_tag
  url: gnome:libdazzle.git
  track: master
  ref: 3.44.0-2-ga94c074fd19a2f0d325b15c853ad600424e6040a
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
