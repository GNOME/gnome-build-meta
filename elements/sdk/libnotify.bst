kind: meson

sources:
- kind: git_repo
  url: gnome:libnotify.git
  track: master
  ref: 0.8.9-0-g9b53a46b0307fe3a7ddd2545de1e395ee2f94d18

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gi-docgen.bst

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
