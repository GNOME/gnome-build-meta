kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/3.37/gsettings-desktop-schemas-3.37.2.tar.xz
  ref: e338e8cbce1684b7df2e50b2d70a0b0fe47176fb0b373e6bc67b26960b40d8ef
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
