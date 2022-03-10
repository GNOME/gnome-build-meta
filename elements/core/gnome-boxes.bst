kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-boxes/42/gnome-boxes-42.rc.tar.xz
  ref: f024c1409e58683fc6456712319165bf50464d08562d0617b8a9143a09f34eb2
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
- sdk/gtksourceview-4.bst
- sdk/json-glib.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- sdk/tracker.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
