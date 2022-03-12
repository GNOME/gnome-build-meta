kind: meson

sources:
- kind: tar
  url: freedesktop_software:appstream/releases/AppStream-0.15.2.tar.xz

  ref: 8f6c1cd288c7c59f5bf21746a6cfd1424cd9d7cbeb0b7920dbcdf9ef10e9c74a
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/lmdb.bst
- core-deps/xmlb.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/libyaml.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dcompose=true
    -Dapidocs=false
    -Dinstall-docs=false
    -Dstemming=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libappstream.so'
