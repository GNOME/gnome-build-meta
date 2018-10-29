kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-session/3.30/gnome-session-3.30.1.tar.xz
  ref: eafe85972689186c7c6b5fe1d3bb4dc204a1e0e6b6e763e24b8fb43a40c07739
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
