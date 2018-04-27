kind: autotools
sources:
- kind: tar
  url: spice:gtk/spice-gtk-0.34.tar.bz2
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- core-deps/phodav.bst
- core-deps/spice-protocol.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --disable-smartcard --enable-vala --enable-webdav
