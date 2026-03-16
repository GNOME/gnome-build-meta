kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/50/adwaita-icon-theme-50.0.tar.xz
  ref: fac6e0401fca714780561a081b8f7e27c3bc1db34ebda4da175081f26b24d460
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
