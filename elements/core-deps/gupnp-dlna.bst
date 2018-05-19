kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gupnp-dlna
  track: master
depends:
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gstreamer.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
