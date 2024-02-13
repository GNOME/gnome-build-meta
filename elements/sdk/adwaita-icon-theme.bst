kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/46/adwaita-icon-theme-46.beta.tar.xz
  ref: 6aae3407636ed98315f40b54e1e9c568cd688e4a04c74f98dceff27b38360852
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
