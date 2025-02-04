kind: meson

sources:
- kind: git_repo
  url: gnome:gjs.git
  track: master
  ref: 1.83.4-1-gce4411f5d9b6fc00ab8d949890037bd351634d5f
- kind: git_module
  url: gnome:gobject-introspection-tests.git
  path: subprojects/gobject-introspection-tests
  ref: 82e531aa925683e30bf82790d47af181c4bb6876

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
