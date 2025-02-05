kind: meson

sources:
- kind: tar
  url: gnome_downloads:adwaita-fonts/48/adwaita-fonts-48.2.tar.xz
  ref: 156f7e92f2f82e527fc73c309dbb237c0a4a5c3a95bc5ee94a5efb6947c553e0
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

