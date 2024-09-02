sources:
- kind: git_repo
  url: gnome:glib.git
  track: main
  ref: 2.81.2-63-g2c7624fafbc7eca4fdd5bc1d8700d0caddd4d89b
- kind: git_module
  url: gnome:gvdb.git
  path: subprojects/gvdb
  ref: 0854af0fdb6d527a8d1999835ac2c5059976c210

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
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
        - '%{libdir}/libgio-2.0.so'
        - '%{libdir}/libglib-2.0.so'
        - '%{libdir}/libgmodule-2.0.so'
        - '%{libdir}/libgobject-2.0.so'
        - '%{libdir}/libgthread-2.0.so'
