kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/glib-networking.git
  track: master
depends:
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- filename: desktop/libproxy.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dinstalled_tests=true
