kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/49/gnome-user-docs-49.1.tar.xz
  ref: 0e50b8bb4fceaa9128367cd3458e5edb861c96278c1aa9a73a6ec0402b7bc617
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
