kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gsettings-desktop-schemas/3.31/gsettings-desktop-schemas-3.31.90.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
