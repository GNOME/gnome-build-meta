kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker-miners/3.7/tracker-miners-3.7.0.tar.xz
  ref: 74e796c1625094a8a2175993c7907281e97ab6e002578e846b8f4ca44e36bf61
build-depends:
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/dconf.bst
- core-deps/exempi.bst
- core-deps/gexiv2.bst
- core-deps/libcue.bst
- core-deps/libgsf.bst
- core-deps/libgxps.bst
- core-deps/libosinfo.bst
- core-deps/totem-pl-parser.bst
- core-deps/upower.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/libsecret.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:components/libflac.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Diptc=disabled
    -Dminer_rss=false
