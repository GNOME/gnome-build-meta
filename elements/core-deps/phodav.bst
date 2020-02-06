kind: meson
sources:
- kind: tar
  url: gnome_downloads:phodav/2.3/phodav-2.3.tar.xz
  ref: 6ef61e624c30a42fb720ef7ade7447e9ba922d69024b0326dc072fa3362ebe59
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
