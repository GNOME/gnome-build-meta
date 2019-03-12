kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gcab/1.2/gcab-1.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/git.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
