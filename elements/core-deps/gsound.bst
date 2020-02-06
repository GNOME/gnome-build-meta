kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gsound/1.0/gsound-1.0.2.tar.xz
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libcanberra.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-gtk-doc
