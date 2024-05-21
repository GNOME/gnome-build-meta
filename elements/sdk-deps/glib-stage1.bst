kind: meson

(@): elements/sdk/glib.inc

variables:
  meson-local: >-
    -Ddtrace=disabled
    -Dintrospection=disabled
    -Dman-pages=disabled
    -Dselinux=disabled
    -Dsysprof=disabled
    -Dsystemtap=disabled
