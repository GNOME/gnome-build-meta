kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/46/gnome-bluetooth-46.1.tar.xz
  ref: 56c44a17034598e9607458afae1be75f3de5efdf0e62355f09ba58fc7bc312ac
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
