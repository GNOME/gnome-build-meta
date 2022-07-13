kind: meson

sources:
- kind: tar
  url: freedesktop_people:~hughsient/appstream-glib/releases/appstream-glib-0.8.0.tar.xz

  ref: 10bac3c3c6d9d27eab7e23872c21158618daa5b132c1d8e3a8154b910049b848
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
    -Dstemmer=false
    -Drpm=false
    -Dfonts=false
    -Ddep11=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libappstream-glib.so'
