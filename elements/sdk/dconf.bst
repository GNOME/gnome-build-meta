kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/dconf
  track: master
depends:
- sdk/glib.bst
- sdk/vala.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dbash_completion=false
