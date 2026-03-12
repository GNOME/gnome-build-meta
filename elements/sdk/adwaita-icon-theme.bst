kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/50/adwaita-icon-theme-50.rc.tar.xz
  ref: e299018e77600976f7e559db0d26005c252382ad911626eb893f25de1ea74f2d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
