kind: meson
sources:
- kind: git_repo
  url: gnome:libmanette.git
  track: main
  ref: 0.2.7-15-gba80c34f799efbb9b58bdf4fb233895ec045ebcc

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
