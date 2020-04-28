kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/3.37/gsettings-desktop-schemas-3.37.1.tar.xz
  ref: 17c5af72bea94d21e8d55016ae80e2d73da80e009d1deb1c00edf4bd3b64763b
- kind: patch
  path: files/gsettings-desktop-schemas/0001-Revert-schemas-change-default-monospaced-and-documen.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
