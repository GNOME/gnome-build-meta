kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.4/gnome-autoar-0.4.2.tar.xz
  ref: 1d20694079300e12feabdb77304a969d1cc190d1d12a949be845cad01c78a5d3
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
