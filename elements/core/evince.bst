kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/evince/3.29/evince-3.29.92.tar.xz
  ref: 62f2664cac6b37a0f7213d50937221a16d071451347fda5faa4d3121571ad4c1
depends:
- core-deps/gspell.bst
- core-deps/libgxps.bst
- core-deps/poppler.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-introspection
