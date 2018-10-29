kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-session/3.30/gnome-session-3.30.1.tar.xz
  ref: 29ebab28ce38d1a4c36a7ca81ee124678f31dd8ab359929efa4f582f8d04cd61
depends:
- core-deps/upower.bst
- core-deps/xmlto.bst
- core/gnome-desktop.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- filename: desktop/xorg-lib-ice.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-sm.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
