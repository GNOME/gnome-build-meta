kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:gnome-boxes
  track: master
depends:
- core-deps/WebKitGTK+.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-vnc.bst
- core-deps/json-glib.bst
- core-deps/libgovirt.bst
- core-deps/libgudev.bst
- core-deps/libosinfo.bst
- core-deps/libsecret.bst
- core-deps/libvirt-glib.bst
- core-deps/spice-gtk.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core-deps/vala.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Drdp=false
