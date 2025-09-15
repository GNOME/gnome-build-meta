kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/49/gsettings-desktop-schemas-49.0.tar.xz
  ref: 912905cc45382888a47702ed1101c6b08ebd0122a32a67d940ab8116a96c520d
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
