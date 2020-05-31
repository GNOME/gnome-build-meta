kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsecret/0.20/libsecret-0.20.3.tar.xz
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
