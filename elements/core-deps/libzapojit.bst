kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libzapojit/0.0/libzapojit-0.0.3.tar.xz
  ref: 3d25f99329105abb99d1e9651b0aa1842065456ea54c22970a7330e9f3d1c37e
depends:
- core-deps/gnome-online-accounts.bst
- filename: core-deps/intltool.bst
  type: build
- core-deps/librest.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
