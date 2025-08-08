kind: meson

sources:
- kind: git_repo
  url: gnome:template-glib.git
  track: main
  ref: 3.37.0-6-ge4bf75edb125994824961d4cf57615f044ce1b9d

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
