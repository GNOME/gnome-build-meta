kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker-miners/2.2/tracker-miners-2.2.99.0.tar.xz
depends:
- core-deps/gexiv2.bst
- core-deps/NetworkManager.bst
- core-deps/libcue.bst
- core-deps/libgrss.bst
- core-deps/libgsf.bst
- core-deps/libgxps.bst
- core-deps/libosinfo.bst
- core-deps/poppler.bst
- sdk/openjpeg.bst
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
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: "-Dxmp=disabled -Dexif=disabled -Diptc=disabled -Dtiff=disabled -Dtaglib=disabled\
    \ -Dgif=disabled\n"
