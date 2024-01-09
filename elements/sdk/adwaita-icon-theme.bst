kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/46/adwaita-icon-theme-46.alpha.tar.xz
  ref: ada060a891ece162620c8a1b7aa4e6a3a299c885102819455839d6f71e582b53
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
