kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.38/pygobject-3.38.0.tar.xz
  ref: 0372d1bb9122fc19f500a249b1f38c2bb67485000f5887497b4b205b3e7084d5
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
