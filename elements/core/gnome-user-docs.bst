kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.38/gnome-user-docs-3.38.2.tar.xz
  ref: f50cbb3a39dd6290c82f9476159606751ec9f25baafafb4c7c95b10f90f534c1
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
