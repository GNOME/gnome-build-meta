kind: meson

(@): elements/sdk/gobject-introspection.inc

depends:
  (>):
  - sdk-deps/glib-stage1.bst

variables:
  meson-local: >-
    -Dbuild_introspection_data=false
    -Dcairo=disabled
    -Ddoctool=disabled
