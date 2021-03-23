kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.40/pygobject-3.40.0.tar.xz
  ref: 67d61fac9f5aa83bf2edccbc286802ce0f1c3dde8f83103b7c765b91a6ed905f
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
