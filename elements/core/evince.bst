kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/evince/3.30/evince-3.30.2.tar.xz
  ref: a95bbdeb452c9cc910bba751e7c782ce60ffe7972c461bccbe8bbcdb8ca5f24c
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
