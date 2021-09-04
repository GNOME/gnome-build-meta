kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/41/gnome-calendar-41.rc1.tar.xz
  ref: 9a838113fd83a0742599a28c1d946010089e1eda6506ff9471883741cc5a0500
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
