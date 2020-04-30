kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/3.36/gsettings-desktop-schemas-3.36.1.tar.xz
  ref: 764ab683286536324533a58d4e95fc57f81adaba7d880dd0ebbbced63e960ea6
- kind: patch
  path: files/gsettings-desktop-schemas/0001-Revert-schemas-change-default-monospaced-and-documen.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
