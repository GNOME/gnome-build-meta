kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/41/gnome-user-docs-41.5.tar.xz
  ref: c42fa8a4bac3f34ed002f058bb47fa7a2b183c7ebfe1ae181e513b73b9791074
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
