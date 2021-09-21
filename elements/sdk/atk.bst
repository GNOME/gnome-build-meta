kind: meson
sources:
- kind: tar
  url: gnome_downloads:atk/2.36/atk-2.36.0.tar.xz
  ref: fb76247e369402be23f1f5c65d38a9639c1164d934e40f6a9cf3c9e96b652788
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libatk-1.0.so'
