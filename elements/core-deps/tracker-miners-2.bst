kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker-miners/2.3/tracker-miners-2.3.4.tar.xz
  ref: 0bb0dd3dfe2b63d23700d4c2ba5601af6271f8a2469f9b009aa2c4a951439e83
build-depends:
- core-deps/intltool.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/dconf.bst
- core-deps/gexiv2.bst
- core-deps/libcue.bst
- core-deps/libgsf.bst
- core-deps/libgxps.bst
- core-deps/libosinfo.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker-2.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libflac.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/poppler.bst
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
