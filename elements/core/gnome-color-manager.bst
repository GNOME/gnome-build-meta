kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-color-manager/3.36/gnome-color-manager-3.36.0.tar.xz
  ref: 9ddb9e6b6472e119801381f90905332ec1d4258981721bba831ca246ceb3ad3b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core-deps/vte.bst
- core-deps/libcanberra.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:bootstrap-import.bst
