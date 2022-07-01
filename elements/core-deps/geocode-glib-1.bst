kind: meson

sources:
- kind: git_tag
  url: gnome:geocode-glib.git
  track: master

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
