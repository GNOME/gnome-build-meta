kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/47/gnome-calendar-47.beta.tar.xz
  ref: 8c2d210bda5828a6dfd482323714311e4b1c4348deb1f00d898dca120aee7164
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
