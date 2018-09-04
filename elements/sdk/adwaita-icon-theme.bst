kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/adwaita-icon-theme/3.30/adwaita-icon-theme-3.30.0.tar.xz
  ref: 9106729174a3e6cc183d14f74454987f5378b46f213e698a6ab2702f70e4e64b
depends:
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
