kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.42/pygobject-3.42.2.tar.xz
  ref: ade8695e2a7073849dd0316d31d8728e15e1e0bc71d9ff6d1c09e86be52bc957
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
