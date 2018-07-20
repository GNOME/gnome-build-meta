kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdk-pixbuf/2.37/gdk-pixbuf-2.37.0.tar.xz
  ref: 81508700f500eca3f21c4cfd0a3486459a373a65e07457a9a4f3bf7d08109c11
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- filename: desktop/shared-mime-info.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
public:
  bst:
    integration-commands:
    - gdk-pixbuf-query-loaders --update-cache
