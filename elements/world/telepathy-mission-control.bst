kind: autotools
sources:
- kind: git
  url: github_com:TelepathyIM/telepathy-mission-control
  track: telepathy-mission-control-5.16
depends:
- core-deps/NetworkManager.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- world/telepathy-glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-upower
