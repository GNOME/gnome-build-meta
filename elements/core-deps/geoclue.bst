kind: autotools
sources:
- url: http://www.freedesktop.org/software/geoclue/releases/2.4/geoclue-2.4.7.tar.xz
  kind: tar
  ref: d17b96bb5799a84723385ea5704235565e9c3dedd2b7afac475a06e550ae0ea6
depends:
- core-deps/ModemManager.bst
- core-deps/glib.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- base.bst
variables:
  conf-local: ''
