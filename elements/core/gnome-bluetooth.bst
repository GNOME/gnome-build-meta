kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/46/gnome-bluetooth-46.beta.tar.xz
  ref: 66f999cbbe549855ebe432d62ac9b1b184d8db3f1ae42281728a59c153f5d4b9
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
