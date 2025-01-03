kind: meson

sources:
- kind: git_repo
  url: gnome:gjs.git
  track: master
  ref: 1.82.1-67-g4e237fbfb209e9911f842c5df292a440f37ab80d
- kind: git_module
  url: gnome:gobject-introspection-tests.git
  path: subprojects/gobject-introspection-tests
  ref: aba35b994745deec80b959c28c3cf4b0c4d2ae6a

build-depends:
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/mozjs.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dprofiler=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
