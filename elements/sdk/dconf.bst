kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/dconf/0.30/dconf-0.30.1.tar.xz
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
