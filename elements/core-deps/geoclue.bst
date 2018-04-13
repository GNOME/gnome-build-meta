kind: autotools
sources:
- url: http://www.freedesktop.org/software/geoclue/releases/2.4/geoclue-2.4.8.tar.xz
  kind: tar
  ref: 12175167a97f30cb9d739225b339a69a2237ebc4c91ccfb6e73059504f0ecf23
depends:
- core-deps/ModemManager.bst
- core-deps/glib.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- base.bst
variables:
  conf-local: ''
