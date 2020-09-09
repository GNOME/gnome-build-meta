kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker-miners/2.3/tracker-miners-2.3.5.tar.xz
  ref: 9509d37fb29acd233058f4df5bd1234b692ac6f946bc2e5f7b8dbf51dfe5b9fa
build-depends:
- core-deps/intltool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/gexiv2.bst
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
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libflac.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dxmp=disabled
    -Dexif=disabled
    -Diptc=disabled
    -Dminer_rss=false
    -Dtiff=disabled
    -Dtaglib=disabled
    -Dgif=disabled
