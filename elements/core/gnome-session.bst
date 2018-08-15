depends:
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/upower.bst
- core-deps/xmlto.bst
- core/gnome-desktop.bst
- filename: desktop/xorg-lib-ice.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-sm.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: e348ff52c88d2b1a125b0278027cc782c8ad08412c14e6f7529dcaa173a2cae5
  url: https://download.gnome.org/sources/gnome-session/3.29/gnome-session-3.29.90.tar.xz
