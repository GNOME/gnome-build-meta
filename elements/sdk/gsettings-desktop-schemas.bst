kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/50/gsettings-desktop-schemas-50.0.tar.xz
  ref: 358f07cb253727650e132805df3c69f7bf90448040bce171b6f6f2cb1b9c37ef
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
