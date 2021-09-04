kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/41/gsettings-desktop-schemas-41.rc.tar.xz
  ref: 68d51f6eff69d26d738f9e1c043c148cd8eb91f3be948f42051ed5b8e8cd44a0
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
