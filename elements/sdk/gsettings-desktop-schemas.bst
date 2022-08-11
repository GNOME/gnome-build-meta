kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/43/gsettings-desktop-schemas-43.alpha.tar.xz
  ref: 26b18291f87b6cfac5ec03d1acaac2c0235032bee034e66068e7047def022028
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
