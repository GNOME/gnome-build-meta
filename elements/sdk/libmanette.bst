kind: meson
sources:
- kind: git_repo
  url: gnome:libmanette.git
  track: main
  ref: 0.2.11-34-gda8ec205321d30dd9968a0e49fb007a74ce2a453

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/hidapi.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddoc=true
