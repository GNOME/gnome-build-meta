kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/tracker-miners.git
  track: master
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
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: components/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >-
    -Dxmp=disabled
    -Dexif=disabled
    -Diptc=disabled
    -Dtiff=disabled
    -Dtaglib=disabled
    -Dgif=disabled
