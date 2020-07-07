kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-boxes/3.37/gnome-boxes-3.37.1.tar.xz
  ref: a6c832891e9b9c59d3db610ec8de0c849b4e6f837f98ae16370b019f20b971b2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtk-vnc.bst
- core-deps/libhandy-0.bst
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/spice-gtk.bst
- core-deps/tracker-miners-2.bst
- core-deps/tracker-2.bst
- core-deps/vte.bst
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Drdp=false
