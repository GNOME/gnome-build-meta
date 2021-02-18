kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-getting-started-docs/3.36/gnome-getting-started-docs-3.36.3.tar.xz
  ref: 21d9b29e8c86d23c41b5611b29e81c0dae02a1fba14806ea32fcf2828c1712c2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
