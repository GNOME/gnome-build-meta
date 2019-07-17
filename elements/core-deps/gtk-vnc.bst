kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtk-vnc/0.9/gtk-vnc-0.9.0.tar.xz
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: components/cyrus-sasl.bst
  junction: freedesktop-sdk.bst
- filename: components/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/gnutls.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-gtk=3.0 --enable-vala --disable-werror
