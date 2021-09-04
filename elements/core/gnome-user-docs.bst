kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/41/gnome-user-docs-41.rc.tar.xz
  ref: c5af532b7e49f09415485e8963d4abeaa75cab7c3099d09aacd5430c83cebb34
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
