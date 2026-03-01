kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/50/gsettings-desktop-schemas-50.rc.tar.xz
  ref: 4b255d0ed207b02410e0e28db2003460edea7ebf79663239aef3173d291645db
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
