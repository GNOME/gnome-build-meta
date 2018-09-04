kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/baobab/3.30/baobab-3.30.0.tar.xz
  ref: 5e4dd06f241eb32f00850efa1a4541cee088de480be2b52d788143187410a74f
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
