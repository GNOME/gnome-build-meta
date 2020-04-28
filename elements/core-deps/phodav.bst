kind: meson
sources:
- kind: tar
  url: gnome_downloads:phodav/2.4/phodav-2.4.tar.xz
  ref: 7dddc2b75e04d0866bb9c9a83028a597ebd73ef4c37bd6ebe1032a870b43b8c3
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/avahi.bst
- core-deps/libgudev.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
