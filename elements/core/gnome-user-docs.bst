kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/50/gnome-user-docs-50.7.tar.xz
  ref: a2af8084bad4fee7d9c678b888ebb853833d32f7eb765e811a9897636606aaed
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
