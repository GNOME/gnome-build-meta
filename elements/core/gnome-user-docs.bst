kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/44/gnome-user-docs-44.5.tar.xz
  ref: 124762f0bf7df1211ec931909ebb7a79262391e300c04d3f4799be0b9e77028c
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
