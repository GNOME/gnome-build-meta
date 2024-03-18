kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/45/gnome-user-docs-45.5.tar.xz
  ref: 74167fcf42a04d9e5d3cc130d27bc203d87b685ce606a84674df24e1ff719e54
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
