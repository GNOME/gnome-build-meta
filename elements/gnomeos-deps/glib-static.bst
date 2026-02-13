kind: meson

(@): elements/sdk/glib.inc

build-depends:
  (>):
  - freedesktop-sdk.bst:components/python3-docutils.bst
  - sdk/gi-docgen.bst
  - sdk-deps/gobject-introspection-stage1.bst

variables:
  meson-local: >-
    -Ddocumentation=true
    -Ddtrace=disabled
    -Dinstalled_tests=true
    -Dintrospection=enabled
    -Dselinux=disabled
    -Dsysprof=disabled
    -Dsystemtap=disabled
    -Ddefault_library=static
