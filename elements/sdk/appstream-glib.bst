kind: meson

sources:
- kind: git_tag
  url: github_com:hughsie/appstream-glib.git
  track: master

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
- sdk/libsoup-2.4.bst
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
