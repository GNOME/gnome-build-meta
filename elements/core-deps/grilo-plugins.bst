kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/grilo-plugins/0.3/grilo-plugins-0.3.6.tar.xz
  ref: d9e07ec0aeb1e52270b6a3629c9f040d6f40808834aa3c8e2da90fecb7c31275
depends:
- core-deps/gmime3.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gom.bst
- core-deps/grilo.bst
- core-deps/gssdp.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp.bst
- core-deps/json-glib.bst
- core-deps/libgdata.bst
- core-deps/libmediaart.bst
- core-deps/librest.bst
- core-deps/libsoup.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
