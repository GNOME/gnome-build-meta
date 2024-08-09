kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/46/gsettings-desktop-schemas-46.1.tar.xz
  ref: 9b88101437a6958ebe6bbd812e49bbf1d09cc667011e415559d847e870468a61
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
