kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.34/pygobject-3.34.0.tar.xz
  ref: 87e2c9aa785f352ef111dcc5f63df9b85cf6e05e52ff04f803ffbebdacf5271a
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- filename: components/pkg-config.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
