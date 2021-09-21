kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/41/gsettings-desktop-schemas-41.0.tar.xz
  ref: 77289972e596d044583f0c056306d8f1dbd8adcf912910a50da0a663e65332ed
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
