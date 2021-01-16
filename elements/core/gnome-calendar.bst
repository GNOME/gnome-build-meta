kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/40/gnome-calendar-40.alpha.tar.xz
  ref: b210e3319c9b090a6ba24bafae44fd57091de747766586e80405b92d40db8f03
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libdazzle.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
