kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/3.38/gnome-calendar-3.38.0.tar.xz
  ref: c3684252a72bb59089d071514458a4aeba417f9551ff5d548e1a5984e47b4733
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libdazzle.bst
- core-deps/libhandy-0.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
