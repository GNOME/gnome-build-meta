kind: autotools
sources:
- kind: tar
  url: github_tar:ibus/ibus/releases/download/1.5.17/ibus-1.5.17.tar.gz
  ref: 55977ca458e8add750af5f9b76e1a524844cc3b0e2fad70ce153dd219a009d3c
depends:
- core-deps/dconf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- base.bst
variables:
  conf-local: --disable-tests --disable-gconf --enable-dconf --disable-memconf --disable-ui
    GSETTINGS_SCHEMA_CONVERT=/usr/bin/false --with-python=python3 --disable-emoji-dict
