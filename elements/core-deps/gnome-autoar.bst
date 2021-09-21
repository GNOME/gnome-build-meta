kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.4/gnome-autoar-0.4.0.tar.xz
  ref: ea8c6d524babc712ac59e1d0e3ac8bf0137482dadf33c94fe9113794a1bc4474
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
