kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/51/gnome-user-docs-51.beta.tar.xz
  ref: ad76f4408910fed87fdfdb0b24c60568ada71645ebe9197cabe2b3a521e5ad64
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/yelp-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
