kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-calendar
  track: master
depends:
- core-deps/evolution-data-server.bst
- core-deps/libdazzle.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
