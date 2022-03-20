kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgsf/1.14/libgsf-1.14.49.tar.xz
  ref: e9ebe36688f010c9e6e40c8903f3732948deb8aca032578d07d0751bd82cf857
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --without-bonobo
    --without-gnome-vfs
    --enable-introspection
