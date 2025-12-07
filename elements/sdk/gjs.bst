kind: meson

sources:
- kind: git_repo
  url: gnome:gjs.git
  track: master
  ref: 1.86.0-161-gcec01cc09a4d118ec959544f9625cd85e8ff3890
- kind: git_module
  url: gnome:gobject-introspection-tests.git
  path: subprojects/gobject-introspection-tests
  ref: b255f43b4d81953e8474a2f8919a4117e3cd3f62

build-depends:
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/mozjs.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dprofiler=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
