kind: autotools
sources:
- kind: git_tag
  url: github_com:TelepathyIM/telepathy-mission-control.git
  track: telepathy-mission-control-5.16
depends:
- core-deps/NetworkManager.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- world/telepathy-glib.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-upower
