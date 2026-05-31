kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/50/gnome-user-docs-50.2.tar.xz
  ref: 834863d916189ae13f72562be81d3817232e136d0d37ec376811111ffa159542
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
