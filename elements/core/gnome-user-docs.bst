kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/46/gnome-user-docs-46.4.tar.xz
  ref: 2776072f15f92bd05028345f3ac8a093d44260de52a620d62693c0e5eea20534
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
