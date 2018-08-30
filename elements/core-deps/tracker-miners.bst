kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker-miners/2.1/tracker-miners-2.1.2.tar.xz
  ref: 145f2d0e1c5dc668c85bb0af635b4467bde6bf7ad066fc90291a50acd21c10cc
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
- filename: desktop/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
