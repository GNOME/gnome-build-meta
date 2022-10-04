kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-autoar.git
  track: master
  ref: 0.4.3-3-g15e057226ccaf217bb1ca1e3e5a8ac18e97d1fe5
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
