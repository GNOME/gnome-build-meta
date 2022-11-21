kind: meson

sources:
- kind: git_tag
  url: gnome:template-glib.git
  track: main
  ref: 3.36.0-4-ga5e994866ec6464839e68e72d7e7c2fe4c66815b

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
