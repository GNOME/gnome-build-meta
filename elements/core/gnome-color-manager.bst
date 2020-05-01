kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-color-manager/3.36/gnome-color-manager-3.36.0.tar.xz
  ref: 44ea6d16fe0c5648432c593d0160ada8c2ecfef44a6138c52e3ab4504b04ceac
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core-deps/vte.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:bootstrap-import.bst
