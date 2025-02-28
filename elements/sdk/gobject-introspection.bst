kind: meson

(@): elements/sdk/gobject-introspection.inc

depends:
  (>):
  - freedesktop-sdk.bst:components/python3-mako.bst
  - freedesktop-sdk.bst:components/python3-markdown.bst
  - sdk/glib.bst

variables:
  meson-local: >-
    -Dcairo=disabled
    -Ddoctool=enabled
    -Dgtk_doc=true
