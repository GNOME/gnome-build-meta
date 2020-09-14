kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.38/gnome-user-docs-3.38.0.tar.xz
  ref: 38d3db5b5dc5912812a2c6cb29765bfb39242cedcd7ee347df98fca777dcee8a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
