kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-getting-started-docs/3.38/gnome-getting-started-docs-3.38.1.tar.xz
  ref: 10fbe23f2c3ce427539a4e307a461694d3870b23200464f705b7d81af993c859
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
