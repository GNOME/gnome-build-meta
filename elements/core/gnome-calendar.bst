kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/3.38/gnome-calendar-3.38.1.tar.xz
  ref: 7280880a082d631624d02a102dd547ceb59498da368311f3e49a06cff897f512
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
