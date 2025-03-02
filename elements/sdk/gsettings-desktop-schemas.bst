kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/48/gsettings-desktop-schemas-48.rc.tar.xz
  ref: 2d26b05d997723f67f3be052622923d83acd04ccbbaf01b80668a5a0249aca67
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
