kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/51/adwaita-icon-theme-51.0.tar.xz
  ref: ba561cf3c96305a47179fa5605856ad695c9238ea07f7093aebd9ba80c4e323b
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
