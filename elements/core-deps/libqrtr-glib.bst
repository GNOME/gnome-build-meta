kind: meson

sources:
- kind: tar
  url: 
    freedesktop_files:mobile-broadband/libqrtr-glib/-/archive/1.2.2/libqrtr-glib-1.2.2.tar.gz
  ref: c5cdf5ea91cbd2cf2758b2896064c7b1dfe7156063267df905f957ac69b6b763

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
