kind: meson

sources:
- kind: tar
  url: gnome_downloads:adwaita-fonts/50/adwaita-fonts-50.0.tar.xz
  ref: 4c927fbfeec1c503801ba510c2c94e0054c82c522cf7ba0d3be5d4d41fcf5c86
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

