kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.37/gnome-user-docs-3.37.92.tar.xz
  ref: 21d60bf4c9feb0f1309cc3ab819ff3a9668cea0ffefb79d634b0bce8d7fa1f43
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
