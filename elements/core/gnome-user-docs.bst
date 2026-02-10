kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/49/gnome-user-docs-49.4.tar.xz
  ref: 064448eadd5c1f15bc8feb50418a6347114ef815dc8d15d00a20dc5f48ae8a80
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
