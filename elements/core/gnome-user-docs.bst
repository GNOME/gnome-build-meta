kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/40/gnome-user-docs-40.0.tar.xz
  ref: 3174480d218da25828b377e105117c135d13b7a2f566fd317e32748f37263a91
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
