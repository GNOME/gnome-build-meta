kind: meson
sources:
- kind: tar
  url: gnome_downloads:atk/2.35/atk-2.35.1.tar.xz
  ref: be9360fa3f845e91f001c20e73b3a0315b38983411b1dc008195f779ac543884
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
