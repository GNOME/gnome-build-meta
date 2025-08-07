kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/48/gnome-user-docs-48.2.tar.xz
  ref: 67829f764ba672d7f99ff72ef6513b40cc931fb401bf7bd7db5f805e7bfa3db9
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
