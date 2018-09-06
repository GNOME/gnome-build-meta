kind: autotools
sources:
- kind: tar
  url: spice:gtk/spice-gtk-0.34.tar.bz2
  ref: e9720e01165f8451c9f3f58ad50e3afb990993b81cc2db86b3661b7ac5b976ee
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
