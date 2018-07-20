kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gssdp/1.0/gssdp-1.0.2.tar.xz
  ref: a1e17c09c7e1a185b0bd84fd6ff3794045a3cd729b707c23e422ff66471535dc
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
