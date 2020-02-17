kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/colord/releases/colord-gtk-0.2.0.tar.xz
  ref: 2a4cfae08bc69f000f40374934cd26f4ae86d286ce7de89f1622abc59644c717
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/colord.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: -Dman=false -Dvapi=true
