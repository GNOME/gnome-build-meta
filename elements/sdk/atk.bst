kind: meson
sources:
- kind: tar
  url: gnome_downloads:atk/2.38/atk-2.38.0.tar.xz
  ref: ac4de2a4ef4bd5665052952fe169657e65e895c5057dffb3c2a810f6191a0c36
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
