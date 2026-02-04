kind: meson

sources:
- kind: git_repo
  url: gnome:template-glib.git
  track: main
  ref: 3.39.0-1-g886acfe34b1038b26fbd7353a93016eeafb29e91

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
