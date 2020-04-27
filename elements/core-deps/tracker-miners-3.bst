kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/tracker-miners.git
  track: master
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
