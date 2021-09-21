kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/41/gnome-user-docs-41.0.tar.xz
  ref: 2ab88626919e84c3a25e180a6f74a3f89e940b9a2a94a1d6b008559e2392dd51
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
