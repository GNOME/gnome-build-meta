sources:
- kind: git_repo
  url: gnome:gobject-introspection.git
  track: main
  ref: 1.83.2-2-g2fd1bc390bfedc67dfd6c2694de8cac6349a13a4
- kind: git_module
  url: gnome:gobject-introspection-tests.git
  path: gobject-introspection-tests
  ref: 82e531aa925683e30bf82790d47af181c4bb6876

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
