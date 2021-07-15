kind: meson
sources:
- kind: tar
  url: gnome_downloads:libnotify/0.7/libnotify-0.7.9.tar.xz
  ref: 66c0517ed16df7af258e83208faaf5069727dfd66995c4bbc51c16954d674761
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddocbook_docs=disabled
    -Dman=false
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libnotify.so'
