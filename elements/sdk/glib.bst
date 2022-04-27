kind: meson

sources:
- kind: git_tag
  url: gnome:glib.git
  track: main

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
# a dummy dependency so our glib is always staged
# on top of freedesktop-sdk version
- freedesktop-sdk.bst:components/glib.bst

depends:
# sysprof-capture-4 ends up in Requires.private
# so we either could have added sysprof-minimal
# as a builddep to everything that depends on it
# and its downstream users, or make it a runtime
# depencency of glib and have it be always available
# transiently.
#
# Ideally, sysprof-miniaml would be just a build dep
# of moduels, since its already statically linked.
# https://github.com/mesonbuild/meson/issues/3970
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:components/libffi.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dglib_debug=enabled
    -Dgtk_doc=true
    -Dinstalled_tests=true
    -Dselinux=disabled
    -Dsysprof=enabled

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
