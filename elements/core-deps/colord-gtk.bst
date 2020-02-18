kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/colord/releases/colord-gtk-0.2.0.tar.xz
  ref: 2a4cfae08bc69f000f40374934cd26f4ae86d286ce7de89f1622abc59644c717
depends:
- core-deps/colord.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dman=false -Dvapi=true
