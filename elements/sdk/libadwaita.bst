kind: meson

sources:
- kind: git_repo
  url: gnome:libadwaita.git
  track: main
  ref: 1.10.beta.1-18-g8e29bfbe3fba211d9993ff69923e03c4db65ccff

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk-deps/sassc.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst

depends:
- sdk/gtk.bst
- sdk/ministream.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dprofiling=true
    -Dgtk_doc=true

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/adwaita-1-demo'
        - '%{datadir}/applications/org.gnome.Adwaita1.Demo.desktop'
        - '%{datadir}/metainfo/org.gnome.Adwaita1.Demo.metainfo.xml'
        - '%{libdir}/libadwaita-1.so'
