kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/51/gsettings-desktop-schemas-51.0.tar.xz
  ref: 1e2419a5f21d26c324b28ae1c00e29e9175e8b596fff385a04c2172b36652226
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
