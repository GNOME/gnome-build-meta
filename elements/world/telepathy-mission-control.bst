kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:telepathy/telepathy-mission-control
  track: telepathy-mission-control-5.16
depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- world/telepathy-glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-upower
