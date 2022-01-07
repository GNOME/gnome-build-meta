kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/41/gnome-calendar-41.2.tar.xz
  ref: 956b2f190322651c67fe667223896f8aa5acf33b70ada5a3b05a5361bda6611a
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
