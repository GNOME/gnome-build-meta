kind: meson

sources:
- kind: git_repo
  url: gnome:glib.git
  track: main
  ref: 2.78.0-283-g8e959e32b11cf114a0afc373f8575bcb68e3e1a0
- kind: git_module
  url: gnome:gvdb.git
  path: subprojects/gvdb
  ref: 0854af0fdb6d527a8d1999835ac2c5059976c210

build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
# sysprof-capture-4 ends up in Requires.private
# so we either could have added sysprof-minimal
# as a builddep to everything that depends on it
# and its downstream users, or make it a runtime
# dependency of glib and have it be always available
# transiently.
#
# Ideally, sysprof-minimal would be just a build dep
# of modules, since its already statically linked.
# https://github.com/mesonbuild/meson/issues/3970
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:components/libffi.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
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
