kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/atk
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst

  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
