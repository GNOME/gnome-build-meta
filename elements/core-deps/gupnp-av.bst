kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gupnp-av/0.12/gupnp-av-0.12.10.tar.xz
  ref: 8038ef84dddbe7ad91c205bf91dddf684f072df8623f39b6555a6bb72837b85a
depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
