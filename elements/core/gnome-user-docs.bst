kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.34/gnome-user-docs-3.34.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
