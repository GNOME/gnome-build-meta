kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-getting-started-docs/3.34/gnome-getting-started-docs-3.34.1.tar.xz
depends:
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
