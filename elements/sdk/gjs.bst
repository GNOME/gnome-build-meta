kind: meson

sources:
- kind: git_repo
  url: gnome:gjs.git
  track: master
  ref: 1.85.90-8-g344d47906d0298f991b56eb6f69fed5d226e3376
- kind: git_module
  url: gnome:gobject-introspection-tests.git
  path: subprojects/gobject-introspection-tests
  ref: 1c26953b926a5dd0b310f6375bfc897a75bbc739

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
