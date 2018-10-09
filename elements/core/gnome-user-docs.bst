kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-user-docs/3.30/gnome-user-docs-3.30.1.tar.xz
depends:
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
