kind: meson

sources:
- kind: git_repo
  url: gnome:geocode-glib.git
  track: master
  ref: 3.26.4-1-g8f1b5a9149156a03f62dfea14780e8fee030506d

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
