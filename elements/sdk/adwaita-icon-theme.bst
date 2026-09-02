kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/51/adwaita-icon-theme-51.beta.tar.xz
  ref: b55b60b406f6e73ca925875a30144691e347971d3785d44808ed9ef09b3f2dc3
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
