kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-autoar.git
  track: master
  ref: 0.4.3-9-g18a9012cc93f0c97b83de6d5ddb8046371f48c6b
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
