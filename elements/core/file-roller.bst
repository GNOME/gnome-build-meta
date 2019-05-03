kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/file-roller.git
  track: master
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
