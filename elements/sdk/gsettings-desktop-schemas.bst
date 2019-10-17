kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/3.34/gsettings-desktop-schemas-3.34.0.tar.xz
- kind: patch
  path: files/gsettings-desktop-schemas/0001-Revert-schemas-change-default-monospaced-and-documen.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
