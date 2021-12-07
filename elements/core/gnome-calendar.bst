kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/41/gnome-calendar-41.1.tar.xz
  ref: 9b5126b233e1b8f89cf4c2326089571d829a9303ec89ea65cf62164e6a7422e1
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
