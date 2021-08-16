kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/41/gsettings-desktop-schemas-41.alpha.tar.xz
  ref: 11fae73f724a0041a963eed5a8192c0bfaed3e39d61e0a513ad7f2ad42db2c3e
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
