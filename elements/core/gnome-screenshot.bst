kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-screenshot/3.30/gnome-screenshot-3.30.0.tar.xz
  ref: 88031ec38ea823d97ddd6884c9b831acc2b33e2d3fd71112c94a1bdcb71ebd19
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
