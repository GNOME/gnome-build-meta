kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/42/gsettings-desktop-schemas-42.0.tar.xz
  ref: 6686335a9ed623f7ae2276fefa50a410d4e71d4231880824714070cb317323d2
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
