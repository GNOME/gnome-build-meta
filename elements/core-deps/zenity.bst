kind: meson

sources:
- kind: tar
  url: gnome_downloads:zenity/4.2/zenity-4.2.1.tar.xz
  ref: 5a9fd8d8316f90cb2e1a5a8f0d411eb9fcaf85957a8229ea3e803e81004a1ebd
build-depends:
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
