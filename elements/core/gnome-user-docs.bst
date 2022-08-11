kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/42/gnome-user-docs-42.0.tar.xz
  ref: b2b27da04100bbdd2f4f0e5bc38f2d056d95fa3656720163f6436a3167d5e905
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
