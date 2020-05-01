kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-getting-started-docs/3.36/gnome-getting-started-docs-3.36.2.tar.xz
  ref: 2956b7cdc0bf0c241e357d5df9d87b16640bf88e4fd2833e0994d6bc4c4e6e25
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
