kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsecret/0.20/libsecret-0.20.5.tar.xz
  ref: 3fb3ce340fcd7db54d87c893e69bfc2b1f6e4d4b279065ffe66dac9f0fd12b4d
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/valgrind.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgtk_doc=false
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libsecret-1.so'
