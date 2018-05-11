kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gupnp-dlna/0.10/gupnp-dlna-0.10.5.tar.xz
  ref: 123e368227c11d5c17fc1aa76cbdaffa345355eb51d172cd39fc74a5b468ff6a
depends:
- core-deps/glib.bst
- core-deps/gst-plugins-base.bst
- core-deps/gst-plugins-good.bst
- core-deps/gstreamer.bst
- base.bst
