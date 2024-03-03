kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/46/gnome-calendar-46.beta.tar.xz
  ref: 401ac776dba23a6b1dcfd53d3fa8128c6830e4f8f66ee98fd83d27a4d93595f8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgweather.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
