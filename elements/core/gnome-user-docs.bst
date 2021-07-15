kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/40/gnome-user-docs-40.3.tar.xz
  ref: 3de057afa2ac0de6ca707f4a76c2932dcbc556c1d0d1cc020565dc1876292ccd
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
