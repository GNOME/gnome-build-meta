kind: meson

sources:
- kind: tar
  url: gnome_downloads:zenity/4.1/zenity-4.1.90.tar.xz
  ref: bf3679c6205ff48dcebd1e1dff3a3a4a6a0b3a53e1cbc3b098a9ec0b62bd7236
build-depends:
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
