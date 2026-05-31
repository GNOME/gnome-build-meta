kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/50/gsettings-desktop-schemas-50.1.tar.xz
  ref: 0a2aa25082672585d16fcdab61c7b0e33f035fb87476505c794f29565afa485b
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
