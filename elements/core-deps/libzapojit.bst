kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libzapojit/0.0/libzapojit-0.0.3.tar.xz
  ref: 3d25f99329105abb99d1e9651b0aa1842065456ea54c22970a7330e9f3d1c37e
build-depends:
- core-deps/intltool.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/librest.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
