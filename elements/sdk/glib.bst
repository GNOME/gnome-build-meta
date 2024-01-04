kind: meson

sources:
- kind: git_repo
  url: gnome:glib.git
  track: main
  ref: 2.79.0-39-gf9e54fc9919e83c7105a4f2c133bfc80eaa136d6
- kind: git_module
  url: gnome:gvdb.git
  path: subprojects/gvdb
  ref: 0854af0fdb6d527a8d1999835ac2c5059976c210

build-depends:
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
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
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddocumentation=true
    -Dinstalled_tests=true
    -Dselinux=disabled
    -Dsysprof=enabled
    -Dintrospection=disabled

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
