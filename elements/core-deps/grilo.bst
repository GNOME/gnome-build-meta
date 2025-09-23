kind: meson

sources:
- kind: git_repo
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.19-1-g98dab06a3f4df363f336f95dbfaddb84488f7e5a

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable-test-ui=false
