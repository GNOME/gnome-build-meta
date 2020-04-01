kind: meson
sources:
- kind: tar
  url: gnome_downloads:atk/2.34/atk-2.34.1.tar.xz
  ref: d4f0e3b3d21265fcf2bc371e117da51c42ede1a71f6db1c834e6976bb20997cb
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libatk-1.0.so'
