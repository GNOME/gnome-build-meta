kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/41/gnome-calendar-41.beta.tar.xz
  ref: 7e16f77a3facb43790181b9c6cab5ec9726533335e70093ffa1c3c6caa3deeae
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
