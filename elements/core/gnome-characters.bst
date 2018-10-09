kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-characters/3.29/gnome-characters-3.29.91.tar.xz
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
