kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.34/gnome-user-docs-3.34.1.tar.xz
  ref: c2edd9d633f6f2a5fd8d5580e169d0e07de64d5d5b12a81ecbd64331d176a986
depends:
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
