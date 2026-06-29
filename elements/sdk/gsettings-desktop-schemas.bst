kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/51/gsettings-desktop-schemas-51.alpha.tar.xz
  ref: 3dfeccea5a43db9d53186282401fdde598068ca560e40da1257b78367eb7efe1
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
