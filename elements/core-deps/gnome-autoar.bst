kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-autoar.git
  track: master
  ref: 0.4.4-2-g5a108ba29861c95364dcb34b2695a84fb8440f18
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dvapi=true
