kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.34/gnome-user-docs-3.34.2.tar.xz
  ref: fc50e50fb2f65484bf447e6972b66353812a7a6a7fa9b1fbdf94d56c77a6b1e4
depends:
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
