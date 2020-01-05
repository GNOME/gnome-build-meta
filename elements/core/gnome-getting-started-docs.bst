kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-getting-started-docs/3.34/gnome-getting-started-docs-3.34.1.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
