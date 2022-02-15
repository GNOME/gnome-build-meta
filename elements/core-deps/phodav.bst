kind: meson
sources:
- kind: tar
  url: gnome_downloads:phodav/2.5/phodav-2.5.tar.xz
  ref: 71f0a9cd70afd4dd1412a0298331dbb8ac71c0377f52117afc15eb88dc6fb910
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/avahi-gobject.bst
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
