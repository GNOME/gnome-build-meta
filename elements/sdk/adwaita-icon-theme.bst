kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/46/adwaita-icon-theme-46.2.tar.xz
  ref: beb126b9429339ba762e0818d5e73b2c46f444975bf80076366eae2d0f96b5cb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
