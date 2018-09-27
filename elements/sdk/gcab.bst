kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gcab/1.1/gcab-1.1.tar.xz
  ref: 192b2272c2adfde43595e5c62388854bca8a404bc796585b638e81774dd62950
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
