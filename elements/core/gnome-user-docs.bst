kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/47/gnome-user-docs-47.0.tar.xz
  ref: d06d87fcd726a90ed03a170cab45d470894991e312912fc508bde0dfbc83cfda
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
