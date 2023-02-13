kind: meson

sources:
- kind: git_tag
  url: gnome:libsoup.git
  track: master
  ref: 3.3.1-1-g25f682db8295a062d6f622a250daa20fc6137031

build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
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
