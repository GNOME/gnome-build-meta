kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/baobab/3.30/baobab-3.30.0.tar.xz
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
