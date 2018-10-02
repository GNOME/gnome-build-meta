kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-user-docs/3.30/gnome-user-docs-3.30.1.tar.xz
  ref: 59f52202b5c9b5125f70279d5a23c735e0d994b7e0bf8d83afa66339037d633b
depends:
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
