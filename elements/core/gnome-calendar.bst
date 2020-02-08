kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/3.35/gnome-calendar-3.35.2.tar.xz
  ref: 24a60911c70648b05783808937833d16989c5a07d53bf38443e9179d641e8a9b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libdazzle.bst
- core-deps/libhandy.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
