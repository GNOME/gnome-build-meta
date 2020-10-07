kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.38/gnome-user-docs-3.38.1.tar.xz
  ref: 4e8af49f5d23571abafc787c37e8ed81e267aeb20b083fd5d8bc85b1cc769e48
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
