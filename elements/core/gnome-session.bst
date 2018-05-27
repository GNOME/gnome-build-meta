kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:gnome-session
  track: master
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
