kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-boxes
  track: master
depends:
- core-deps/gtk-vnc.bst
- core-deps/libgovirt.bst
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/spice-gtk.bst
- core-deps/tracker.bst
- core-deps/tracker-miners.bst
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libgudev.bst
- sdk/libsecret.bst
- sdk/vala.bst
- base.bst
