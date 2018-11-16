kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker-miners/2.1/tracker-miners-2.1.5.tar.xz
depends:
- core-deps/NetworkManager.bst
- core-deps/libcue.bst
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
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
