kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgweather/3.28/libgweather-3.28.2.tar.xz
  ref: 081ce81653afc614e12641c97a8dd9577c524528c63772407ae2dbcde12bde75
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
