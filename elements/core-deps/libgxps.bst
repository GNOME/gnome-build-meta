kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgxps/0.3/libgxps-0.3.1.tar.xz
  ref: 1a939fc8fcea9471b7eca46b1ac90cff89a30d26f65c7c9a375a4bf91223fa94
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
