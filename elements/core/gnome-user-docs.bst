kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.36/gnome-user-docs-3.36.2.tar.xz
  ref: 198fe4c836775a5dc2543a6a520dfb0ac5bf292cdcb358a57c86f35f705e9958
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
