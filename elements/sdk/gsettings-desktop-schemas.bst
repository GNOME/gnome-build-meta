kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/50/gsettings-desktop-schemas-50.alpha.tar.xz
  ref: 1bb819789455e298a4290cc10db471965e6f12277398dd6ce294a278d5678257
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
