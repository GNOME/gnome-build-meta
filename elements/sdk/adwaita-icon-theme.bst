kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.36/adwaita-icon-theme-3.36.1.tar.xz
  ref: e498518627044dfd7db7d79a5b3d437848caf1991ef4ef036a2d3a2ac2c1f14d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
