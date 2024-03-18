kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/46/gnome-bluetooth-46.0.tar.xz
  ref: 13fe1e75f317acdbdf5e80c9029d2e0632d60a9ccf72a43ae36eb7545021fbef
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
