kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/51/gnome-user-docs-51.0.tar.xz
  ref: bf3ebd7fa1da70617884b07392de8d605305cfef71c2e883749cb08ff0d6a7d1
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/yelp-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
