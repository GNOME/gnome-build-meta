kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gupnp-av/0.12/gupnp-av-0.12.10.tar.xz
depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
