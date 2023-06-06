kind: meson

sources:
- kind: git_repo
  url: gnome:geocode-glib.git
  track: master
  ref: 3.26.4-0-g210abe69d68e38947106f4680631c369b0c23189

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dsoup2=false
