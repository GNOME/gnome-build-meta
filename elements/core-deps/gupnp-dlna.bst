kind: autotools
sources:
- kind: git
  url: git_gnome_org:gupnp-dlna
  track: master
depends:
- core-deps/glib.bst
- core-deps/gst-plugins-base.bst
- core-deps/gst-plugins-good.bst
- core-deps/gstreamer.bst
- core-deps/vala.bst
- base.bst
