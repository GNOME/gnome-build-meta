kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker-miners/2.1/tracker-miners-2.1.4.tar.xz
  ref: 318854ca001c90d0a84cb863c6c7a5bbfa056bff5803a95e40768fa808fdd3d5
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
