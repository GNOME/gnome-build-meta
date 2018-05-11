kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/geoclue/releases/2.4/geoclue-2.4.10.tar.xz
  ref: 8412d1995eb60cfb8b6fafa19e655164138b9c9ff0c1e6e8d3a7107e9c449640
depends:
- core-deps/ModemManager.bst
- core-deps/glib.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- base.bst
variables:
  conf-local: ''
