kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/appstream/releases/AppStream-0.14.3.tar.xz
  ref: 16bf426a8f2693a45c84f437a301e560a2fb77179917c175f5ccb0bd9883e5c6
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/lmdb.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/libyaml.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dapidocs=false
    -Dinstall-docs=false
    -Dstemming=false
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libappstream.so'
