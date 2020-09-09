kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.36/gnome-user-docs-3.36.6.tar.xz
  ref: e3a1bf72ae9ff985b71108f9046b08b15f43f91908caa68cecb091c9ab0393d8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
