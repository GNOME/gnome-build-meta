kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-documents
  track: master
depends:
- core-deps/gnome-online-miners.bst
- core-deps/libgepub.bst
- core-deps/libzapojit.bst
- core-deps/tracker.bst
- core-deps/tracker-miners.bst
- core/evince.bst
- core/gnome-desktop.bst
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libgdata.bst
- base.bst
