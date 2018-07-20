kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/mousetweaks/3.12/mousetweaks-3.12.0.tar.xz
  ref: c0db478ccb390665e3201e9d1ce08b1c6573a697b797c9e828debb94b1ae3b97
depends:
- core-deps/gtk+-3.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/xorg-lib-xcursor.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
