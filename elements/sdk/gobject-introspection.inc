sources:
- kind: git_repo
  url: gnome:gobject-introspection.git
  track: main
  ref: 1.80.0-1-g9ab5bb27a6baac9a9cff0366ece619b555b0994c

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
