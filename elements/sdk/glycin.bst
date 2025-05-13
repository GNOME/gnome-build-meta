# This builds
# - libglycin-gtk4
# - glycin-thumbnailer
# - some loaders

kind: meson

(@): elements/sdk/glycin.inc

depends:
  (>):
  - sdk/gtk.bst
  - sdk/libglycin.bst
  - sdk/librsvg.bst
  - freedesktop-sdk.bst:components/libheif.bst
  - freedesktop-sdk.bst:components/libjxl.bst

variables:
  # Don't build libglycin since it's already built in libglycin.bst
  meson-local: >-
    -Dlibglycin=false
