kind: meson
sources:
- kind: git_repo
  url: gnome:libmanette.git
  track: master
  ref: 0.2.7-4-g513e14fc637c1b1277a01de6a63321e1d91ec9a2

build-depends:
- sdk/gtk-doc.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddoc=true
