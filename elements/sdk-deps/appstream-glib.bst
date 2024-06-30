kind: meson

sources:
- kind: tar
  url: github_files:hughsie/appstream-glib/archive/refs/tags/appstream_glib_0_8_3.tar.gz
  ref: 15ad7690b0132d883bd066699a7b55f6cef4c0f266d18d781ce5d8112fb4ee63

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gcab.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Drpm=false
    -Dfonts=false
    -Ddep11=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libappstream-glib.so'
