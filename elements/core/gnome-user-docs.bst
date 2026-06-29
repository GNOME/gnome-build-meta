kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/51/gnome-user-docs-51.alpha.tar.xz
  ref: ea94d6a0b0e8f6cf855922c3b56e4e1832465a2648ef880e6769231ef9d6df26

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/yelp-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
