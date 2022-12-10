kind: meson

(@): elements/sdk/glib.inc

build-depends:
  (>):
  - freedesktop-sdk.bst:components/python3-docutils.bst
  - sdk/gi-docgen.bst
  - sdk-deps/gobject-introspection-stage1.bst

depends:
  (>):
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

variables:
  meson-local: >-
    -Ddocumentation=true
    -Ddtrace=disabled
    -Dinstalled_tests=true
    -Dintrospection=enabled
    -Dselinux=disabled
    -Dsysprof=enabled
    -Dsystemtap=disabled
