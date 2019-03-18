kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gsettings-desktop-schemas/3.32/gsettings-desktop-schemas-3.32.0.tar.xz
- kind: patch
  path: files/gsettings-desktop-schemas/0001-Revert-schemas-change-default-monospaced-and-documen.patch
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
