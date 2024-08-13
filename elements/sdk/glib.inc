sources:
- kind: tar
  url: gnome_downloads:glib/2.81/glib-2.81.1.tar.xz
  ref: 629365cde729a7b76b062fc218a109a84bbc4668ca0c92ab590ecccf969f824c
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
