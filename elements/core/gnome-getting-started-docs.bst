kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-getting-started-docs/3.38/gnome-getting-started-docs-3.38.0.tar.xz
  ref: 7ce3cf6f97c4243c5d756f7ea2aae3b568cff6ddb3e562dbe8194b4b22712c3a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
