kind: meson
sources:
- kind: git
  url: git_gnome_org:gdk-pixbuf
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- filename: desktop/shared-mime-info.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
public:
  bst:
    integration-commands:
    - gdk-pixbuf-query-loaders --update-cache
