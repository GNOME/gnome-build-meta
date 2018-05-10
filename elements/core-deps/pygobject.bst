kind: distutils
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/pygobject.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/pycairo.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
