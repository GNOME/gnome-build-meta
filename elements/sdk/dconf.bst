kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/dconf
  track: master
depends:
- sdk/glib.bst
- filename: sdk/vala.bst
  type: build
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: -Dbash_completion=false
