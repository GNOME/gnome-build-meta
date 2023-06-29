kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-autoar.git
  track: master
  ref: 0.4.4-0-gb387c2482d2a5c8efdfc8c7498f13cd3881685c0
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk-deps/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dvapi=true
