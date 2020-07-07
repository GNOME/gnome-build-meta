kind: meson
sources:
- kind: tar
  url: gnome_downloads:gcab/1.4/gcab-1.4.tar.xz
  ref: 67a5fa9be6c923fbc9197de6332f36f69a33dadc9016a2b207859246711c048f
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/git.bst
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
        - '%{libdir}/libgcab-1.0.so'
