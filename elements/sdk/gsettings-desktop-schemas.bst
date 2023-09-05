kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/45/gsettings-desktop-schemas-45.rc.tar.xz
  ref: ad0c820c7798a1378f89a498e7069710823ac8720ec80b75cb48cb71eafedc36
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
