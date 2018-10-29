kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-characters/3.30/gnome-characters-3.30.0.tar.xz
  ref: b78d9e52c43c1f8ec06deaf8e8de749c055897db6841ccc5f25e3f1ed3f89c21
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
