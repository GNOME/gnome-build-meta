kind: meson

sources:
- kind: git_repo
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.16-16-gedd5f18aa765a55c0ccd070d8a71bdc01136e112

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Denable-test-ui=false
