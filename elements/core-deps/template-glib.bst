kind: meson

sources:
- kind: git_repo
  url: gnome:template-glib.git
  track: main
  ref: 3.38.0-9-g7a24b06ac5209199cc7973154437f40cc56cfba9

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
