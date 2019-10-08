kind: meson
sources:
- kind: tar
  url: gnome_downloads:gdk-pixbuf/2.38/gdk-pixbuf-2.38.2.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- filename: components/shared-mime-info.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: components/libtiff.bst
  junction: freedesktop-sdk.bst
- filename: components/libpng.bst
  junction: freedesktop-sdk.bst
- filename: components/jpeg.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
public:
  bst:
    integration-commands:
    - gdk-pixbuf-query-loaders --update-cache
