kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/48/adwaita-icon-theme-48.0.tar.xz
  ref: 847068888650d9673115be6dbf2bfdc31a46aebc528a6a9db4420e60e656b8d4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
