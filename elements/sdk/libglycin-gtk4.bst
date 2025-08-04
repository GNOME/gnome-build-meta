# Build libglycin-gtk4 independently from libglycin to avoid
# cyclic dependencies with gtk depending on glycin

kind: meson

(@): elements/sdk/glycin.inc

depends:
  (>):
  - sdk/gtk.bst
  - sdk/libglycin.bst

variables:
  meson-local: >-
    -Dlibglycin-gtk4=true
    -Dlibglycin=false
    -Dglycin-thumbnailer=false
    -Dglycin-loaders=false
