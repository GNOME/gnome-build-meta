kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/44/gnome-user-docs-44.3.tar.xz
  ref: 94e044082363438bcdbfa8549489ab6ab296a091e8b652f572133fd74db1692c
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
