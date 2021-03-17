kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/40/gsettings-desktop-schemas-40.rc.tar.xz
  ref: db6d84d72c4d3c21c46ed63e481da71af874c8b1e6719c7366faed06f433de5d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
