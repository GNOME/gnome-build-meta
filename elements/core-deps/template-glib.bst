kind: meson

sources:
- kind: git_repo
  url: gnome:template-glib.git
  track: main
  ref: 3.40.0-1-g2ce6244e0c0744ee42fa9c3a5d5efa9cc9041be6

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
