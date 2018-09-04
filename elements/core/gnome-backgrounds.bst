kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-backgrounds/3.30/gnome-backgrounds-3.30.0.tar.xz
  ref: ece63a2aaf2e9b685721d125b7832fee63749db58743bc147ee92e136896e984
depends:
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
