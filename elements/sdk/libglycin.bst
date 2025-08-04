# Build libglycin independently from libglycin-gtk4 to avoid
# cyclic dependencies with gdk-pixbuf

kind: meson

(@): elements/sdk/glycin.inc

variables:
  meson-local: >-
    -Dlibglycin-gtk4=false
    -Dglycin-thumbnailer=false
    -Dglycin-loaders=false
