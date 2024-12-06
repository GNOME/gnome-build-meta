kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/46/gnome-user-docs-46.7.tar.xz
  ref: f4466c3c56a89c13515459f27c1e259e50f890a0581e495d37850ad182521f97
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
