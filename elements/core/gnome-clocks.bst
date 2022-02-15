kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/42/gnome-clocks-42.beta.tar.xz
  ref: 819ae24517ee1a735ee30e67b47829d71ddbe34782d65c883c9c63d3ec705bd8
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
