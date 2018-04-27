kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-documents
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- core-deps/gnome-online-miners.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libgdata.bst
- core-deps/libgepub.bst
- core-deps/libzapojit.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/adwaita-icon-theme.bst
- core/evince.bst
- core/gnome-desktop.bst
- base.bst
