kind: meson
sources:
- kind: tar
  url: gnome_downloads:gdk-pixbuf/2.38/gdk-pixbuf-2.38.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: desktop/shared-mime-info.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
public:
  bst:
    integration-commands:
    - gdk-pixbuf-query-loaders --update-cache
