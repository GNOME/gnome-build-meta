kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-calendar.git
  track: main
  ref: 43.1-41-g40fa82deabf854702eb60b6fa68106623009e61b

build-depends:
- sdk/appstream-glib.bst
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
