kind: meson
sources:
- kind: tar
  url: gnome_downloads:phodav/2.3/phodav-2.3.tar.xz
  ref: 6ef61e624c30a42fb720ef7ade7447e9ba922d69024b0326dc072fa3362ebe59
depends:
- core-deps/avahi.bst
- core-deps/libgudev.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/git.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
