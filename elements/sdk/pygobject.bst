kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.34/pygobject-3.34.0.tar.xz
  ref: 87e2c9aa785f352ef111dcc5f63df9b85cf6e05e52ff04f803ffbebdacf5271a
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
