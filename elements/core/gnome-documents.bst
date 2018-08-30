kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-documents/3.29/gnome-documents-3.29.91.tar.xz
  ref: 1bc1a23798ac4e00b545a9a70101446121bb62c092e3e7c6a8cb6377dc9683c4
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
