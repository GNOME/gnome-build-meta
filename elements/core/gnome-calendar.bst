kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/40/gnome-calendar-40.beta.tar.xz
  ref: 43c707f04588c7036435242da67e1d4b7cc9058f83e443352271ee9b19715742

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
