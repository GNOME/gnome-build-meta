kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker-miners/2.0/tracker-miners-2.0.5.tar.xz
  ref: 6499c083761631b14ad58d463c4af1d69bca842d9a3d11a6c456ced5d0b26802
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
