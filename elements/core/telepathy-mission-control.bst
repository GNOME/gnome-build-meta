kind: autotools
sources:
- url: http://telepathy.freedesktop.org/releases/telepathy-mission-control/telepathy-mission-control-5.16.4.tar.gz
  kind: tar
  ref: 9769ddac7ad8aad21f6db854016792162b57e6fa0b0aed8d823d76a71fe7e6cb
depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/telepathy-glib.bst
- base.bst
variables:
  conf-local: --disable-upower
