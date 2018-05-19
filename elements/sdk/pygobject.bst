kind: distutils
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/pygobject.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
