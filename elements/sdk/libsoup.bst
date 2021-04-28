kind: meson

sources:
- kind: tar
  url: gnome_downloads:libsoup/2.99/libsoup-2.99.4.tar.xz
  ref: 8a4d39e908da97811db2f7c773b08348a360a8e1e988404332e8ff071263af3e
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/glib-networking.bst

depends:
- sdk/glib.bst
- sdk/krb5.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/libpsl.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/sqlite.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dautobahn=disabled
    -Dtls_check=false
    -Dgtk_doc=true
    -Dntlm=disabled
    -Dsysprof=disabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libsoup-3.0.so'
