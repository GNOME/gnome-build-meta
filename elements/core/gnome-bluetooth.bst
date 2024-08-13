kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/47/gnome-bluetooth-47.beta.tar.xz
  ref: a0d2a536c76b60a751e26ba09c008c6411237bcb079eaa00470db039b5871e4d
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
