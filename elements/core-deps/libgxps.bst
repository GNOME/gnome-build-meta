kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgxps/0.3/libgxps-0.3.1.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: components/libarchive.bst
  junction: freedesktop-sdk.bst
- filename: components/lcms.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
