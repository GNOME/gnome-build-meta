kind: meson

sources:
- kind: git_tag
  url: gnome:template-glib.git
  track: main
  ref: 3.36.0-1-g7948219221a8489c1dfd273b35cb6d3c7aa9a1b5

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
