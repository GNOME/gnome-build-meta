sources:
- kind: git_repo
  url: gnome:gobject-introspection.git
  track: main
  ref: 1.84.0-13-g3bc333663b5d133d65c36348f2dca8c0cda089b1
- kind: git_module
  url: gnome:gobject-introspection-tests.git
  path: gobject-introspection-tests
  ref: 67a03e86da0636c02cac2390ee2f0d5d981875a8

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gtk-doc.bst

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
