kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/42/gnome-bluetooth-42.2.tar.xz
  ref: 8ce8ecfab28272db1830a63f08f9ccb5304734d1be2dbfce795fe4029e629f0c
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
