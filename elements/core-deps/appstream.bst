kind: meson

sources:
- kind: tar
  url: https://www.freedesktop.org/software/appstream/releases/AppStream-0.14.0.tar.xz

  ref: 29eb617599eefec0b63c2894446e8cf7c5717f0285bab5df19fa53a2d5eecd16
build-depends:
- sdk/gobject-introspection.bst
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
