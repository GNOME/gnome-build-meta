kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libzapojit/0.0/libzapojit-0.0.3.tar.xz
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/librest.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
