kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/3.35/gnome-calendar-3.35.92.tar.xz
  ref: 5d35e485b52c9e6677093b8321aee40ffc49743e20c0a20cef7c996fd5ea1c61
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
