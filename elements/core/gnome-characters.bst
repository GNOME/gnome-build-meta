kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/46/gnome-characters-46.0.tar.xz
  ref: a4e8e2c510bf48204b9994a4e7cd537844246e74c8a986f9dbe04e223f5d827c
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
