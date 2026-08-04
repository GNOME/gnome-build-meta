kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/50/gnome-user-docs-50.4.tar.xz
  ref: cd8768435343635bb2dcff69ca03916715532469c465df4804c37add98a13497
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
