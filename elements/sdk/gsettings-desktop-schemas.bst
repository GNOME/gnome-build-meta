kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/3.33/gsettings-desktop-schemas-3.33.90.tar.xz
- kind: patch
  path: files/gsettings-desktop-schemas/0001-Revert-schemas-change-default-monospaced-and-documen.patch
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
