kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/tracker-miners
  track: master
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
- sdk/libsecret.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer-plugins-base.bst
  junction: freedesktop-sdk.bst
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
