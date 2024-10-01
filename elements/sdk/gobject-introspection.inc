sources:
- kind: git_repo
  url: gnome:gobject-introspection.git
  track: main
  ref: 1.82.0-8-ga5e33b2dbd8301b8f772bad5db4019587b2034a0
- kind: git_module
  url: gnome:gobject-introspection-tests.git
  path: gobject-introspection-tests
  ref: 7adb7396928a0964a9d3ef7626f8d2b9639be50d

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
