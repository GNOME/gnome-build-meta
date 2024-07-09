kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/47/gnome-characters-47.alpha.tar.xz
  ref: fa6adadcc7f09221bd8dcc59e60eb917ec6c120e4d2333d0e75389e53b5d6af2
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
