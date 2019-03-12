kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/adwaita-icon-theme/3.31/adwaita-icon-theme-3.31.91.tar.xz
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
