kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/evince/3.28/evince-3.28.2.tar.xz
  ref: 0955d22d85c9f6d322b6cbb464f1cc4c352db619017ec95dad4cc5c3440f73e1
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
