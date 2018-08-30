kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/adwaita-icon-theme/3.29/adwaita-icon-theme-3.29.90.tar.xz
  ref: 4908104a90b0aaa5ce0b826165052f65bdec89e9985be523652c75beb000bc43
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
