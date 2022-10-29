kind: meson

sources:
- kind: git_tag
  url: gnome:template-glib.git
  track: main
  ref: 3.36.0-2-gfd0edfcf9c497bc909d7b498146b85e2e9e4e284

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
