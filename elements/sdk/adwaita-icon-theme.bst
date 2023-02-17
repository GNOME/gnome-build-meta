kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/44/adwaita-icon-theme-44.beta.tar.xz
  ref: 772a156ee56244d6d56b76f70cfc6e6e4a4666ab48c234b7c3e95a626a39a8d6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
