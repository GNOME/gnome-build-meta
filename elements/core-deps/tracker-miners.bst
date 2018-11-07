kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker-miners/2.1/tracker-miners-2.1.5.tar.xz
  ref: f5fd3d4b5573539554d5982ee8ecc10ea84f6693378c5bcc7b162096a63bb8cd
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
- sdk/libsecret.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
