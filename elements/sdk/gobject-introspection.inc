sources:
- kind: git_repo
  url: gnome:gobject-introspection.git
  track: main
  ref: 1.80.1-16-g6ac11bba115a9a8919dca1023d251c3dd90b97f3
- kind: patch
  path: 0001-wip.patch

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gtk-doc.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{datadir}/gobject-introspection-1.0'
        - '%{datadir}/gobject-introspection-1.0/**'
        - '%{libdir}/libgirepository-1.0.so'
