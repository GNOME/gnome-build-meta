kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-documents/3.30/gnome-documents-3.30.0.tar.xz
  ref: 066a4aba215926d5c5b0db1c083eba3e40c2a888c9017973af8faac4ae9c907d
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/gnome-online-miners.bst
- core-deps/libgdata.bst
- core-deps/libgepub.bst
- core-deps/libzapojit.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/evince.bst
- core/gnome-desktop.bst
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: desktop/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
