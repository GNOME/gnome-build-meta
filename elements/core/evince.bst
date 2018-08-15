depends:
- core-deps/glib.bst
- core-deps/gspell.bst
- core-deps/gtk+-3.bst
- core-deps/libgxps.bst
- core-deps/libsecret.bst
- core-deps/libsecret.bst
- core-deps/poppler.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/nautilus.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: caecbd48feed1ba88aadad071324023217c644f86e6c99dc14af5c7ebb5d0423
  url: https://download.gnome.org/sources/evince/3.29/evince-3.29.90.tar.xz
variables:
  conf-local: --enable-introspection
