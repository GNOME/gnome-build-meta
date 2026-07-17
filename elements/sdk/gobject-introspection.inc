sources:
- kind: git_repo
  url: gnome:gobject-introspection.git
  track: main
  ref: 1.86.0-16-g429c7f1eb6ba1eddcaa2914d4d83196c1c5b26db
- kind: git_module
  url: gnome:gobject-introspection-tests.git
  path: gobject-introspection-tests
  ref: 67a03e86da0636c02cac2390ee2f0d5d981875a8

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst

depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{datadir}/gobject-introspection-1.0'
        - '%{datadir}/gobject-introspection-1.0/**'
        - '%{libdir}/libgirepository-1.0.so'
