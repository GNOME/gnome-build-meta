kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/43/gsettings-desktop-schemas-43.rc.1.tar.xz
  ref: e667f55c02e6a2fc91b586a60c027fc2ceb8351d17a41468e4436771507db70b
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
