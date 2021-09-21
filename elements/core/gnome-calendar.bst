kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/41/gnome-calendar-41.0.tar.xz
  ref: 73ac923c6618bd0957d6b7c012a00a47bff67ee934249358817433772ceb193f
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
