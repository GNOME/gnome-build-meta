kind: meson

sources:
- kind: git_repo
  url: gnome:geocode-glib.git
  track: master
  ref: 3.26.4-3-g31b7f9ca703a8f30cfea60f9be5a0fa57e539ef8

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dsoup2=false
