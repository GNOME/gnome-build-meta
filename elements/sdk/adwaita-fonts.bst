kind: meson

sources:
- kind: tar
  url: gnome_downloads:adwaita-fonts/51/adwaita-fonts-51.0.tar.xz
  ref: fa104ae2c1b96580d322f563ffe8b2dfca5296b0eca4971efd2d8011405123d2
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

