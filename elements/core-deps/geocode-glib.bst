depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: ea4086b127050250c158beff28dbcdf81a797b3938bb79bbaaecc75e746fbeee
  url: https://download.gnome.org/sources/geocode-glib/3.26/geocode-glib-3.26.0.tar.xz
