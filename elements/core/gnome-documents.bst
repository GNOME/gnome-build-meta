depends:
- core-deps/WebKitGTK+.bst
- core-deps/gjs.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gnome-online-miners.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libgdata.bst
- core-deps/libgepub.bst
- core-deps/libzapojit.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/adwaita-icon-theme.bst
- core/evince.bst
- core/gnome-desktop.bst
- filename: desktop/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: f50226f3c08dc7e2069d3365335fc1ab187b0939f04ab55e97aca7b70c111ac4
  url: https://download.gnome.org/sources/gnome-documents/3.28/gnome-documents-3.28.1.tar.xz
