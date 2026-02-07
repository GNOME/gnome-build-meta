kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/50/adwaita-icon-theme-50.alpha.tar.xz
  ref: 4d401b547b3759d76f1d2e571b972a96eec71dec0ebcf35324d6e6f1806be45b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
