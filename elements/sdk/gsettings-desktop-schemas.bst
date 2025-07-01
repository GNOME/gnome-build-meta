kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/48/gsettings-desktop-schemas-48.0.tar.xz
  ref: e68f155813bf18f865a8b2c8e9d473588b6ccadcafbb666ab788857c6c2d1bd3
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
