kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-boxes/3.29/gnome-boxes-3.29.92.tar.xz
  ref: d2c4d9db1c1d10bfb4e92e0c9af8e67a1f985c7e3d76266ea207618c254a4819
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
