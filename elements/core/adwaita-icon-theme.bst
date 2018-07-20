kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/adwaita-icon-theme/3.28/adwaita-icon-theme-3.28.0.tar.xz
  ref: 7aae8c1dffd6772fd1a21a3d365a0ea28b7c3988bdbbeafbf8742cda68242150
depends:
- core-deps/gnome-common.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
