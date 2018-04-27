kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-boxes
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/gtk-vnc.bst
- sdk/json-glib.bst
- core-deps/libgovirt.bst
- sdk/libgudev.bst
- core-deps/libosinfo.bst
- sdk/libsecret.bst
- core-deps/libvirt-glib.bst
- core-deps/spice-gtk.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/vala.bst
- sdk/adwaita-icon-theme.bst
- base.bst
