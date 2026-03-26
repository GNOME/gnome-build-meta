kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/49/gnome-user-docs-49.5.tar.xz
  ref: 8a6efb2fc9b48375e643d2df6e6925379f73c87e5b5198f34badb1c6e5850cc3
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
