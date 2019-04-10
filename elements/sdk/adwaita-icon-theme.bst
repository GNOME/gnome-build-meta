kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.32/adwaita-icon-theme-3.32.0.tar.xz
depends:
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
