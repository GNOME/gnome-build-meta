kind: autotools
sources:
- kind: git
  url: git_gnome_org:tracker-miners
  track: master
depends:
- core-deps/NetworkManager.bst
- core-deps/libgrss.bst
- core-deps/libgsf.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker.bst
- sdk/dconf.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- sdk/libsecret.bst
- base.bst
