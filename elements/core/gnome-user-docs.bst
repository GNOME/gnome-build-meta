kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/44/gnome-user-docs-44.0.tar.xz
  ref: cf6cd7eb9c4149dd93966f71fa1b907afc8f651ecc3af54e1085bcf4ad21b1bd
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
