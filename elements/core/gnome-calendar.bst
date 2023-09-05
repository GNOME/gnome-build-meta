kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/45/gnome-calendar-45.rc.tar.xz
  ref: a10347d0d78ff837f97eefee66109180ea285898b0498edf79e9ccef33281009
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
- freedesktop-sdk.bst:bootstrap-import.bst
