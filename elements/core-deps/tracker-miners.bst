kind: autotools
sources:
- kind: git
  url: git_gnome_org:tracker-miners
  track: master
depends:
- core-deps/NetworkManager.bst
- sdk/dconf.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- core-deps/libgrss.bst
- core-deps/libgsf.bst
- sdk/libsecret.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker.bst
- base.bst
