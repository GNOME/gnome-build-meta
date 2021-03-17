kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/40/gnome-calendar-40.rc.tar.xz
  ref: dc4c55354ee782260aa3314f0630241b6a94878eaf148639b1673d27273b8e09

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
