kind: meson

sources:
- kind: git_repo
  url: gnome:libnotify.git
  track: master
  ref: 0.8.7-24-g1f3fdd1e4490cb9b9b10b2cdb1a2472212bc67e5

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
