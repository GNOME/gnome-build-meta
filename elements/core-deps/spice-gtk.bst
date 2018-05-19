kind: autotools
sources:
- kind: tar
  url: spice:gtk/spice-gtk-0.34.tar.bz2
depends:
- core-deps/phodav.bst
- core-deps/spice-protocol.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-smartcard --enable-vala --enable-webdav
  conf-aux: build-aux
