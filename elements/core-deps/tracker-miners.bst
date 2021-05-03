kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker-miners/3.0/tracker-miners-3.0.5.tar.xz
  ref: c9be14871b1398e6e656a354a8f8f59e69e93169017f2b28308ef439324fd12b
build-depends:
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
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
- core-deps/upower.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/libsecret.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:components/libflac.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dxmp=disabled
    -Diptc=disabled
    -Dminer_rss=false
    -Dtiff=disabled
    -Dgif=disabled
