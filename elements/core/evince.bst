kind: autotools
sources:
- url: https://download.gnome.org/sources/evince/3.26/evince-3.26.0.tar.xz
  kind: tar
  ref: 79567bdb743cf0c3ed7b638da32afc9b850298f9b4edd532455df4a7e2a4c9d8
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libgxps.bst
- core-deps/libsecret.bst
- core-deps/libsecret.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/nautilus.bst
- base.bst
variables:
  conf-local: --enable-introspection
