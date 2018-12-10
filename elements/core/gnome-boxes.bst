kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-boxes/3.30/gnome-boxes-3.30.3.tar.xz
  ref: 7ab8eabdfda7b89b80fd6125ea1427fbcc5f376a0a2e40bfff5f5b3521973429
depends:
- core-deps/gtk-vnc.bst
- core-deps/libgovirt.bst
- core-deps/libgudev.bst
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/spice-gtk.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Drdp=false
