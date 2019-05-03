kind: distutils
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/pygobject.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- filename: components/pkg-config.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
