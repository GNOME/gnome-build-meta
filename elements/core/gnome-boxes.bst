kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-boxes/3.37/gnome-boxes-3.37.90.tar.xz
  ref: 122da39131acb971b3e764006c5c3698447a5d9220aab3383db63c0929de915d
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/freerdp.bst
- core-deps/gtk-vnc.bst
- core-deps/libhandy-0.bst
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/spice-gtk.bst
- core-deps/tracker-2.bst
- core-deps/tracker-miners-2.bst
- core-deps/vte.bst
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
