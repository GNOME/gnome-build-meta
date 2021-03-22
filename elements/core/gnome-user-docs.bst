kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.38/gnome-user-docs-3.38.5.tar.xz
  ref: 5cc59b8947ffdd8eb067dcfd19090bf7193a803ff47c323c7121e3da9fa8dde4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
