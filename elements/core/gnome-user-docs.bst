kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/41/gnome-user-docs-41.2.tar.xz
  ref: d3170895dd3a8bb117c9f148a0bb3fb490d1af7131c4416877b1bbfec591395a
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
