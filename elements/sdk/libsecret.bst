kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsecret/0.20/libsecret-0.20.1.tar.xz
  ref: 57f73e94ec6263a17a077fb809cf8cf424637a897a7f15b4eec42ce4aef52447
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
  meson-local: -Dgtk_doc=false
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libsecret-1.so'
