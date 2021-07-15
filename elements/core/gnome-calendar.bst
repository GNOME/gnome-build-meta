kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/40/gnome-calendar-40.2.tar.xz
  ref: 9e3701fd4a0e589800d225203770644f31d5234655f54a83a85ff0556dd7ea33
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libdazzle.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
