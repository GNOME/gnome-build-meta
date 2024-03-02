kind: meson
sources:
- kind: git_repo
  url: gnome:libmanette.git
  track: master
  ref: 0.2.7-1-ge506a40ad981d1d328bc0014f5ed25149be44fa4

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
