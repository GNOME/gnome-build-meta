kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:tracker-miners
  track: master
depends:
- core-deps/NetworkManager.bst
- core-deps/dconf.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gst-plugins-base.bst
- core-deps/gstreamer.bst
- core-deps/libgrss.bst
- core-deps/libgsf.bst
- core-deps/libsecret.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker.bst
- filename: desktop/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
