kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-session/3.29/gnome-session-3.29.92.tar.xz
  ref: 8aaebc385e7b2166c51dc6e0fd70081ae2535defee935e327e70f238edcb50e2
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
