kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/3.37/gnome-calendar-3.37.92.tar.xz
  ref: 0fc976647fefc173c706674b6dccf9d73f1eedfea5b2b19f421e8b0297f00c19
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
