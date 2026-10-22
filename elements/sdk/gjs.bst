kind: meson

sources:
- kind: git_repo
  url: gnome:gjs.git
  track: master
  ref: 1.89.90-125-g149411d4a294dd98f4268e121962b8c670ca578e
- kind: git_module
  url: gnome:gobject-introspection-tests.git
  path: subprojects/gobject-introspection-tests
  ref: 2d70188d700d7b0b60ba91210d633b1f745f0c9f

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk-deps/wabt.bst
- sdk/sysprof-minimal.bst

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
    -Db_pch=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
