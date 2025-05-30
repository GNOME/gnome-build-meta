kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-autoar.git
  track: master
  ref: 0.4.5-0-g7ca0791c85256084eb6c9e06ef64daff5c0918d1
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dgtk=false
    -Dvapi=true
