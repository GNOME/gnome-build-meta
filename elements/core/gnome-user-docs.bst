kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.32/gnome-user-docs-3.32.3.tar.xz
depends:
- sdk/yelp-tools.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
