kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-session/3.28/gnome-session-3.28.1.tar.xz
  ref: b893f75c8d34dbdbbc5c56429a17b59136ac7402e12f384da856dcfc725cd592
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
