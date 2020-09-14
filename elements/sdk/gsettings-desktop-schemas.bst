kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/3.38/gsettings-desktop-schemas-3.38.0.tar.xz
  ref: 5704c8266004b296036671f223c705dc046aa694a1b1abb87c67e7d2747a8c67
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
