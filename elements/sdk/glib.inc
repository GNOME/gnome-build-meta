sources:
- kind: git_repo
  url: gnome:glib.git
  track: main
  ref: 2.91.0-8-ga70b6a97a590f714cdf47af58e62458e2f81c07b
- kind: git_module
  url: gnome:gvdb.git
  path: subprojects/gvdb
  ref: 93b9891602b0428e1303ba6e94b46de6a11314f8

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libffi.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/util-linux.bst

public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
    - |
      if [ -d "%{libdir}/gio/modules" ]; then
        gio-querymodules "%{libdir}/gio/modules"
      fi
    split-rules:
      devel:
        (>):
        - '%{bindir}/gdbus-codegen'
        - '%{bindir}/gi-compile-repository'
        - '%{bindir}/gi-decompile-typelib'
        - '%{bindir}/gi-inspect-typelib'
        - '%{bindir}/glib-compile-resources'
        - '%{bindir}/glib-genmarshal'
        - '%{bindir}/glib-mkenums'
        - '%{bindir}/gobject-query'
        - '%{bindir}/gtester'
        - '%{bindir}/gtester-report'
        - '%{datadir}/glib-2.0/codegen'
        - '%{datadir}/glib-2.0/codegen/**'
        - '%{datadir}/glib-2.0/gdb'
        - '%{datadir}/glib-2.0/gdb/**'
        - '%{datadir}/glib-2.0/valgrind'
        - '%{datadir}/glib-2.0/valgrind/**'
        - '%{libdir}/libgio-2.0.so'
        - '%{libdir}/libglib-2.0.so'
        - '%{libdir}/libgmodule-2.0.so'
        - '%{libdir}/libgobject-2.0.so'
        - '%{libdir}/libgthread-2.0.so'
