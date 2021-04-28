kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-boxes/40/gnome-boxes-40.0.tar.xz
  ref: fa7f1a5f4d741c962a6aa69cdc6d81d57a2dd29496cb9510629ce166af61acf5
- kind: patch
  path: files/gnome-boxes/re-order-recommended.patch

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/freerdp.bst
- core-deps/gtk-vnc.bst
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/osinfo-db.bst
- core-deps/spice-gtk.bst
- core-deps/tracker-miners.bst
- core-deps/vte.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/json-glib.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- sdk/tracker.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
