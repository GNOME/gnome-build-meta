kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/48/adwaita-icon-theme-48.alpha.tar.xz
  ref: a81264ea1d47f8b760d141cb71b95984ca6e0297c122a5f46325ec0f9bc02747
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
