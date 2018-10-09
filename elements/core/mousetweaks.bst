kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/mousetweaks/3.12/mousetweaks-3.12.0.tar.xz
depends:
- filename: sdk/gnome-common.bst
  type: build
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: desktop/xorg-lib-xcursor.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
