kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdk-pixbuf/2.38/gdk-pixbuf-2.38.0.tar.xz
  ref: dd50973c7757bcde15de6bcd3a6d462a445efd552604ae6435a0532fbbadae47
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: desktop/shared-mime-info.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
public:
  bst:
    integration-commands:
    - gdk-pixbuf-query-loaders --update-cache
