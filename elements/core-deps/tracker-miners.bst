kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker-miners/2.3/tracker-miners-2.3.3.tar.xz
  ref: 7472aa28d7862620d3ca2bbec3b103df547d7319c12e95a7f7aa9f9f6dee4b19
depends:
- core-deps/NetworkManager.bst
- core-deps/gexiv2.bst
- filename: core-deps/intltool.bst
  type: build
- core-deps/libcue.bst
- core-deps/libgsf.bst
- core-deps/libgxps.bst
- core-deps/libosinfo.bst
- core-deps/poppler.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker.bst
- sdk/dconf.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/libsecret.bst
- sdk/openjpeg.bst
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/libflac.bst
  junction: freedesktop-sdk.bst
- filename: components/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dxmp=disabled -Dexif=disabled -Diptc=disabled -Dminer_rss=false -Dtiff=disabled
    -Dtaglib=disabled -Dgif=disabled
