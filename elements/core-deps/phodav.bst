kind: meson
sources:
- kind: tar
  url: gnome_downloads:phodav/2.4/phodav-2.4.tar.xz
  ref: 7dddc2b75e04d0866bb9c9a83028a597ebd73ef4c37bd6ebe1032a870b43b8c3
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
