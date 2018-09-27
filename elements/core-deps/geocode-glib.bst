kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/geocode-glib/3.26/geocode-glib-3.26.0.tar.xz
  ref: ea4086b127050250c158beff28dbcdf81a797b3938bb79bbaaecc75e746fbeee
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
