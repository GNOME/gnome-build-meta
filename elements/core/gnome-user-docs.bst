kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/50/gnome-user-docs-50.5.tar.xz
  ref: adb2e358eb72631dbe90f741234d0d2949807e2af246ef26bb2901c8a8e9b21e
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
