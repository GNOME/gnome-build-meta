kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gobject-introspection.git
  track: master
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >
    -Dgtk_doc=true
