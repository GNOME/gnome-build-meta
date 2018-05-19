kind: autotools
sources:
- kind: git
  url: git_gnome_org:gupnp-dlna
  track: master
depends:
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gstreamer.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
