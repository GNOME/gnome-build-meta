kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-music/3.29/gnome-music-3.29.92.tar.xz
  ref: 32500270dea150d40cfe43689dffd975ae4bf8398ef188a9b3ff086583f191ed
depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libdazzle.bst
- core-deps/libmediaart.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/adwaita-icon-theme.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/gvfs.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
