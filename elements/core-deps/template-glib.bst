kind: meson

sources:
- kind: git_tag
  url: gnome:template-glib.git
  track: main
  ref: 3.36.1-3-gc35410ad507a678d0de2c5528b395e2074d3f442

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
