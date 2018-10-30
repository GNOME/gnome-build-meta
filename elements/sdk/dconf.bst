kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/dconf
  track: master
- kind: patch
  path: files/dconf/dconf-override.patch
depends:
- sdk/glib.bst
- filename: sdk/vala.bst
  type: build
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dbash_completion=false
