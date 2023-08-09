kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/45/adwaita-icon-theme-45.beta.tar.xz
  ref: 8eb9fbe426cf77593154bb759e690ddc404292d4983f272ecf4d9ef9bedba312
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
