kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-color-manager/3.36/gnome-color-manager-3.36.2.tar.xz
  ref: 3904d42abb4ea566df0b880e82bf0b9f86386c692f15b318469a4c7be33a887f
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core-deps/libcanberra.bst
- core-deps/vte.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:bootstrap-import.bst
