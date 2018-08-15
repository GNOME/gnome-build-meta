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
kind: autotools
sources:
- kind: tar
  ref: 8cdff2be40f178e1ca7f5f06b03b4a5cbf234e897cb92eeb98de3ac5fef545fc
  url: https://download.gnome.org/sources/tracker-miners/2.1/tracker-miners-2.1.0.tar.xz
