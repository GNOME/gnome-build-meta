kind: meson
sources:
- kind: tar
  url: gnome_downloads:geocode-glib/3.26/geocode-glib-3.26.2.tar.xz
  ref: 01fe84cfa0be50c6e401147a2bc5e2f1574326e2293b55c69879be3e82030fd1
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
