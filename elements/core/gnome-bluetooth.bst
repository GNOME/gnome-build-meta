kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/42/gnome-bluetooth-42.rc.tar.xz
  ref: 36a658feb49ae282428a982e642a059af070abe654994167bb9c06b069eb053b
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
