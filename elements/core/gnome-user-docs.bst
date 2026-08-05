kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/49/gnome-user-docs-49.9.tar.xz
  ref: 741a4b9971e5f90bbad088125cc15164406e9c5a0ef3bcd2adfdbb216331c4d4
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
