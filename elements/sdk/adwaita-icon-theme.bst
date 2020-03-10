kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.36/adwaita-icon-theme-3.36.0.tar.xz
  ref: 1a172112b6da482d3be3de6a0c1c1762886e61e12b4315ae1aae9b69da1ed518
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
