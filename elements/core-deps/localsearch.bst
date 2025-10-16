kind: meson
sources:
- kind: git_repo
  url: gnome:localsearch.git
  track: main
  ref: 3.10.1-1-gd47c6f0e21c211a4a07d7ecf49e524ea42d11b89
build-depends:
- core-deps/python-dbusmock.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
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
- sdk/tinysparql.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:components/libflac.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Diptc=disabled
