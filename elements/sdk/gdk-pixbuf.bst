kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdk-pixbuf/2.37/gdk-pixbuf-2.37.92.tar.xz
  ref: bd7692b69354e151369f3b874631257d24a73d9b086db246079e389a5d45281e
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
