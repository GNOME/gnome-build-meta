kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.36/gnome-user-docs-3.36.2.tar.xz
  ref: 4e4287c9a756b9a643ab996d2b144613d281baedb9a5971b94e0b9f38af2dc6e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
