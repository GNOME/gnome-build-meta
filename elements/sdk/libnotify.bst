kind: meson

sources:
- kind: git_tag
  url: gnome:libnotify.git
  track: master
  ref: 0.8.1-1-g80121a3b8c0118535545a9e37cbe4d877b1388a3

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
