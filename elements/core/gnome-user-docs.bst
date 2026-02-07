kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/50/gnome-user-docs-50.beta.tar.xz
  ref: 9ded816d64ddd8bc1129f2a149441be7bce040ccff80d12932e43261b13999ba
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
