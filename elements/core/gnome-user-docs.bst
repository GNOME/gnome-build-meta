kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/47/gnome-user-docs-47.6.tar.xz
  ref: 3b27364d5bd2eb924caca29b4e8e6fc5188f8e8bf1c9365b6f92785198030f62
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
