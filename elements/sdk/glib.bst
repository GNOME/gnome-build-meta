kind: meson

sources:
- kind: tar
  url: gnome_downloads:glib/2.66/glib-2.66.3.tar.xz
  ref: 79f31365a99cb1cc9db028625635d1438890702acde9e2802eae0acebcf7b5b1

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
# a dummy dependency so our glib is always staged
# on top of freedesktop-sdk version
- freedesktop-sdk.bst:components/glib.bst

depends:
- freedesktop-sdk.bst:components/libffi.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgtk_doc=false
    -Dinstalled-tests=true
    -Dselinux=disabled

public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
    - |
      if [ -d "%{libdir}/gio/modules" ]; then
        gio-querymodules "%{libdir}/gio/modules"
      fi
    - |
      for lib in gio glib gmodule gobject gthread; do
        fulllib="%{libdir}/lib${lib}-2.0.so.0"
        keep="$(readlink "${fulllib}")"
        for i in "${fulllib}".*; do
          if [ "$(basename "${i}")" != "${keep}" ]; then
            rm "${i}"
          fi
        done
      done
    # remove this once freedesktop-sdk updates to 2.66
    - rm -f /usr/include/glib-2.0/glib/gurifuncs.h
    overlap-whitelist:
    - '**'
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgio-2.0.so'
        - '%{libdir}/libglib-2.0.so'
        - '%{libdir}/libgmodule-2.0.so'
        - '%{libdir}/libgobject-2.0.so'
        - '%{libdir}/libgthread-2.0.so'
