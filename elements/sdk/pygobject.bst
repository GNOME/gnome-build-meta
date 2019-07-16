kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.32/pygobject-3.32.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- filename: base/pkg-config.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
