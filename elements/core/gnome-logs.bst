kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-logs.git
  track: master
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: desktop/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
