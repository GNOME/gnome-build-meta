kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-getting-started-docs/3.32/gnome-getting-started-docs-3.32.0.tar.xz
depends:
- sdk/yelp-tools.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
