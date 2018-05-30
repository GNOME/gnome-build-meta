kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gdk-pixbuf
  track: master
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
