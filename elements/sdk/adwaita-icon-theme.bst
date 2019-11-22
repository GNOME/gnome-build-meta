kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.34/adwaita-icon-theme-3.34.3.tar.xz
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
