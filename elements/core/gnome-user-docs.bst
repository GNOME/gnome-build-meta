kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-user-docs/3.30/gnome-user-docs-3.30.2.tar.xz
depends:
- sdk/yelp-tools.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
