kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.42/pygobject-3.42.1.tar.xz
  ref: 1f34b5f7624de35e44eb5a7eb428353285bd03004d55131a5f7f7fa9b90f3cc9
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
