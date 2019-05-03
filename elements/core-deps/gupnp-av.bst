kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gupnp-av.git
  track: master
depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
