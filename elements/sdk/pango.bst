kind: meson
sources:
- kind: tar
  url: gnome_downloads:pango/1.44/pango-1.44.7.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: components/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: components/fribidi.bst
  junction: freedesktop-sdk.bst
- filename: components/harfbuzz.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
