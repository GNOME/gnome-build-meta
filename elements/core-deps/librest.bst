kind: autotools
sources:
- kind: tar
  url: gnome_downloads:rest/0.8/rest-0.8.1.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: components/ca-certificates.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
