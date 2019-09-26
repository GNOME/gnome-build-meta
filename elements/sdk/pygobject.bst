kind: distutils
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/pygobject.git
  track: master
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
