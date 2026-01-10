kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/49/adwaita-icon-theme-49.0.tar.xz
  ref: 65166461d1b278aa942f59aa8d0fccf1108d71c65f372c6266e172449791755c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
