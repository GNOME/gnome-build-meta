kind: autotools
sources:
- kind: tar
  url: spice:gtk/spice-gtk-0.36.tar.bz2
depends:
- core-deps/phodav.bst
- core-deps/spice-protocol.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/vala.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-smartcard
    --enable-vala
    --enable-webdav
  conf-aux: build-aux
