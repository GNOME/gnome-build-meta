kind: meson
sources:
- kind: tar
  url: gnome_downloads:geocode-glib/3.26/geocode-glib-3.26.2.tar.xz
  ref: 01fe84cfa0be50c6e401147a2bc5e2f1574326e2293b55c69879be3e82030fd1
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
