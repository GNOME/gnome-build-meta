kind: meson

sources:
- kind: tar
  url: gnome_downloads:geocode-glib/3.26/geocode-glib-3.26.3.tar.xz
  ref: 1dfeae83b90eccca1b6cf7dcf7c5e3b317828cf0b56205c4471ef0f911999766
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dsoup2=true

config:
  install-commands:
    # Overlap with geocode-glib-2
    (>):
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-airport.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-bar.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-building.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-bus-stop.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-car.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-light-rail-station.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-marker.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-place-of-worship.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-railway-station.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-restaurant.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-school.svg"
    - rm "%{install-root}%{datadir}/icons/hicolor/scalable/places/poi-town.svg"
