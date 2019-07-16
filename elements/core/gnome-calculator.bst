kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/3.32/gnome-calculator-3.32.2.tar.xz
depends:
- core-deps/gtksourceview.bst
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
