kind: meson

sources:
- kind: tar
  url: gnome_downloads:libnotify/0.7/libnotify-0.7.8.tar.xz
  ref: 69209e0b663776a00c7b6c0e560302a8dbf66b2551d55616304f240bba66e18c
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: -Ddocbook_docs=disabled -Dman=false
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libnotify.so'
