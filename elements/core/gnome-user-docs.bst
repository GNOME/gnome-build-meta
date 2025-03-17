kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/47/gnome-user-docs-47.5.tar.xz
  ref: 727cd30d80a801412be4085bfedc870f962a49fd057d904c6d42534bae1f2133
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
