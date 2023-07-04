kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/42/gnome-bluetooth-42.5.tar.xz
  ref: a4f5f1ac2dbb7b7b92f7d6d2b42c030f62aed9b5426b9dc116946041f3cba8f7
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- core-deps/upower.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
