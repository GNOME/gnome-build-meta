kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/47/gnome-user-docs-47.2.tar.xz
  ref: d9bf08b9a6c284d1e04f6fe9237a6deedad161e0e5ba7810bffecf285e2bcddf
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
