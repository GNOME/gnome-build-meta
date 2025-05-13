# This builds
# - glycin-thumbnailer
# - some loaders

kind: meson

(@): elements/sdk/glycin.inc

depends:
  (>):
  - sdk/libglycin.bst
  - sdk/librsvg.bst
  - freedesktop-sdk.bst:components/libheif.bst
  - freedesktop-sdk.bst:components/libjxl.bst

variables:
  # Don't build libglycin since it's already built in libglycin.bst
  # Don't build libglycin-gtk4 since it's already built in libglycin-gtk4.bst
  # Disable tests because they depend on gtk4 and cause a cyclic dependency
  meson-local: >-
    -Dlibglycin=false
    -Dlibglycin-gtk4=false
    -Dtests=false
