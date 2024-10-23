kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/46/gnome-bluetooth-46.2.tar.xz
  ref: 1b48feec75b8b4f1a6e564cce7cc4ebd35b3225cb8d8be93c8efc44894003635
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
