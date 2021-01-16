kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libmediaart/1.9/libmediaart-1.9.4.tar.xz
  ref: a57be017257e4815389afe4f58fdacb6a50e74fd185452b23a652ee56b04813d
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-qt
