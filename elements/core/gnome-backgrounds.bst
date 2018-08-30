kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-backgrounds/3.29/gnome-backgrounds-3.29.90.tar.xz
  ref: aebf8d2f4396526c039fd70d4f97509d523933cb564c39c4e63c728fc8fd01d5
depends:
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
