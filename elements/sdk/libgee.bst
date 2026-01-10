kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgee/0.20/libgee-0.20.8.tar.xz
  ref: 189815ac143d89867193b0c52b7dc31f3aa108a15f04d6b5dca2b6adfad0b0ee
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgee-0.8.so'
