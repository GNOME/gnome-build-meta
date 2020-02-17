kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsoup/2.69/libsoup-2.69.90.tar.xz
  ref: 8ed18092cfb27d870a7c7c45992f3a216bd22dd6fd6d2c9fbf1adc2d6957cab8
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/brotli.bst
- sdk/glib.bst
- sdk/krb5.bst
- freedesktop-sdk.bst:components/libpsl.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/sqlite.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: -Dtls_check=false -Dgtk_doc=true -Dntlm=disabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libsoup-2.4.so'
        - '%{libdir}/libsoup-gnome-2.4.so'
