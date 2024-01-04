kind: meson

(@): elements/sdk/glib.inc

variables:
  meson-local: >-
    -Dintrospection=disabled
    -Dman-pages=disabled
    -Dselinux=disabled
