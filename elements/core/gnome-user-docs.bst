kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/44/gnome-user-docs-44.6.tar.xz
  ref: 2fadc0f205c05ad274293b3c8026cad16efafba9529a14f89364d59719ab4237
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
