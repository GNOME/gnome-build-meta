kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/49/gnome-user-docs-49.10.tar.xz
  ref: c5a2735fd4b58e582c3fead6175854fc9a7be5a257907e949431bd3617971d3a
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
