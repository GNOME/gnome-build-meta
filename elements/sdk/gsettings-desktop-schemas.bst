kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/42/gsettings-desktop-schemas-42.rc.tar.xz
  ref: e2d19110bb945b24872c11bf4c80efd19136f5e5ab22a9358ef040df46776809
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
