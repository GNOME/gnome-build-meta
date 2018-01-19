kind: autotools
sources:
- kind: git
  url: git_gnome_org:tracker-miners
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gst-plugins-base.bst
- core-deps/gstreamer.bst
- core-deps/libgrss.bst
- core-deps/libgsf.bst
- core-deps/libsecret.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker.bst
- core/NetworkManager.bst
- core/dconf.bst
- base.bst
