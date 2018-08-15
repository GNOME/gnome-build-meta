depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core-deps/phodav.bst
- core-deps/spice-protocol.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: e9720e01165f8451c9f3f58ad50e3afb990993b81cc2db86b3661b7ac5b976ee
  url: spice:gtk/spice-gtk-0.34.tar.bz2
variables:
  conf-aux: build-aux
  conf-local: --disable-smartcard --enable-vala --enable-webdav
