kind: meson

sources:
- kind: git_repo
  url: gnome:template-glib.git
  track: main
  ref: 3.38.0-5-g47cd5d7fbe1aaa789a9e0a7b8d66bd880a5d1821

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
