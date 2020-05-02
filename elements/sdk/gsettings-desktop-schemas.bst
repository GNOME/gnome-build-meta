kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/3.36/gsettings-desktop-schemas-3.36.1.tar.xz
  ref: 004bdbe43cf8290f2de7d8537e14d8957610ca479a4fa368e34dbd03f03ec9d9
- kind: patch
  path: files/gsettings-desktop-schemas/0001-Revert-schemas-change-default-monospaced-and-documen.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
