kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-tour/3.37/gnome-tour-3.37.1.tar.xz
build-depends:
- freedesktop-sdk.bst:extensions/rust/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/cantarell-fonts.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
