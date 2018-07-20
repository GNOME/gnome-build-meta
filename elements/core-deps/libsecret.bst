kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsecret/0.18/libsecret-0.18.6.tar.xz
  ref: 5efbc890ba41a323ffe0599cd260fd12bd8eb62a04aa1bd1b2762575d253d66f
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
