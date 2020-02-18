kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtk-vnc/1.0/gtk-vnc-1.0.0.tar.xz
  ref: a81a1f1a79ad4618027628ffac27d3391524c063d9411c7a36a5ec3380e6c080
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: components/cyrus-sasl.bst
  junction: freedesktop-sdk.bst
- filename: components/gnutls.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-gtk=3.0 --enable-vala --disable-werror
