kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-getting-started-docs/3.35/gnome-getting-started-docs-3.35.92.tar.xz
  ref: 61dac88fecaad162fb702009652e8d15d0679204c93cb2ce163b9c88876ea9e7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
