kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/evince/3.30/evince-3.30.0.tar.xz
  ref: cbd02d1c515fd7f17af1c96935e456d6ccba4d612d2d972a12079cc6b24e8cb9
depends:
- core-deps/gspell.bst
- core-deps/libgxps.bst
- core-deps/poppler.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsecret.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-introspection
