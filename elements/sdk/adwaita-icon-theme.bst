kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.34/adwaita-icon-theme-3.34.3.tar.xz
  ref: e7c2d8c259125d5f35ec09522b88c8fe7ecf625224ab0811213ef0a95d90b908
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
