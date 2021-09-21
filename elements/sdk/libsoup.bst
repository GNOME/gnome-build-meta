kind: meson

sources:
- kind: tar
  url: gnome_downloads:libsoup/3.0/libsoup-3.0.0.tar.xz
  ref: cde05f3e20114ce985cbd03d575ff74e5e41e70a218e5eb3068c4bf4710dbf2b
build-depends:
- sdk/sysprof-minimal.bst
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
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libnghttp2.bst
- freedesktop-sdk.bst:components/libpsl.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/sqlite.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dautobahn=disabled
    -Dgtk_doc=true
    -Dhttp2_tests=disabled
    -Dinstalled_tests=true
    -Dntlm=disabled
    -Dsysprof=enabled
    -Dtls_check=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libsoup-3.0.so'
