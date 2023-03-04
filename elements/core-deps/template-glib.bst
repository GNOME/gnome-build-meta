kind: meson

sources:
- kind: git_tag
  url: gnome:template-glib.git
  track: main
  ref: 3.36.1-1-g38ccd4bff8f7a917a43940595a4daa4f6bd819c3

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
