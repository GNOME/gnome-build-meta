kind: meson
sources:
- kind: tar
  url: gnome_downloads:phodav/2.4/phodav-2.4.tar.xz
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Davahi=disabled
