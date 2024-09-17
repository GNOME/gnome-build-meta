kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/47/adwaita-icon-theme-47.0.tar.xz
  ref: ad088a22958cb8469e41d9f1bba0efb27e586a2102213cd89cc26db2e002bdfe
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
