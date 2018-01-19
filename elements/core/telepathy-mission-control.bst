kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:telepathy/telepathy-mission-control
  track: telepathy-mission-control-5.16
depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/telepathy-glib.bst
- core/NetworkManager.bst
- base.bst
variables:
  conf-local: --disable-upower
