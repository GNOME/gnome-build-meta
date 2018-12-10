kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/adwaita-icon-theme/3.30/adwaita-icon-theme-3.30.1.tar.xz
  ref: 6d752a2b1bc668483956d4485c39cad1642d9358e133ff689526e43674a4e1ce
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
