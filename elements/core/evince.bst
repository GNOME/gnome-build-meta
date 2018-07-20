kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/evince/3.29/evince-3.29.1.tar.xz
  ref: 1da2fa044d9cd3e2463170847fda0c7fb2b769a80aa36324677bc88d1a452350
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
variables:
  conf-local: --enable-introspection
