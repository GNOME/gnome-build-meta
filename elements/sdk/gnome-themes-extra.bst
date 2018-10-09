kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-themes-extra/3.28/gnome-themes-extra-3.28.tar.xz
depends:
- sdk/cantarell-fonts.bst
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
variables:
  conf-local: --disable-gtk2-engine
