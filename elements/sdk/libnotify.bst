kind: meson

sources:
- kind: tar
  url: gnome_downloads:libnotify/0.8/libnotify-0.8.7.tar.xz
  ref: 4be15202ec4184fce1ac15997ece5530d2be32fe9573875aeb10e3b573858748
build-depends:
- sdk/gobject-introspection.bst
- sdk/gi-docgen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddocbook_docs=disabled
    -Dman=false
    -Dtests=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libnotify.so'

  cpe:
    vendor: 'gnome'
