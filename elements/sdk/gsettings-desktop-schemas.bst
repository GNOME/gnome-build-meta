kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/45/gsettings-desktop-schemas-45.alpha.tar.xz
  ref: a0df840bad25e102743f0235c8eb093768ac3bf898baca33949b5430f1b14fa3
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
