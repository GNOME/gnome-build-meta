kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/3.34/gnome-calendar-3.34.2.tar.xz
  ref: 3ca32c2354461f1728e54a14f38fc3a9e052f579bb3893a7b09f10105268d5ae
depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libdazzle.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
