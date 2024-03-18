kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/46/gsettings-desktop-schemas-46.0.tar.xz
  ref: 493a46a1161b6388d57aa72f632a79ce96c42d5ffbd1d0b00f496ec5876f8575
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
