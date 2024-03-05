kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/46/gsettings-desktop-schemas-46.rc.tar.xz
  ref: c15fc44942d8f3f8a5f8cc5dbc393abf068e571effc68af8d28b5bac255c26d6
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
