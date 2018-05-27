kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/glib-networking
  track: master
depends:
- core-deps/glib.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/libproxy.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dinstalled_tests=true
