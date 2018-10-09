kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-keyring/3.28/gnome-keyring-3.28.2.tar.xz
depends:
- sdk/gcr.bst
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
