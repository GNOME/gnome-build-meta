kind: meson

sources:
- kind: git_tag
  url: gnome:libadwaita.git
  track: main
  ref: 1.4.beta-20-g1c2b09bbe12737fd2b107e0816a5b4f57cfc4a16

build-depends:
- sdk-deps/gi-docgen.bst
- sdk-deps/sassc.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:bootstrap-import.bst

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
