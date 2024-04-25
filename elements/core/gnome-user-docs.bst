kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/46/gnome-user-docs-46.1.tar.xz
  ref: a97293cbeeb797eb4f4d169d713bb6583bd12c3791e140283e4356d2fe180ada
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
