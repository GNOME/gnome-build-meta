kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-color-manager/3.32/gnome-color-manager-3.32.0.tar.xz
  ref: 7c3c178faacfcbf11d56de22cd265946a7d58aa10e3cd968c2938e2fbf50fdee
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
