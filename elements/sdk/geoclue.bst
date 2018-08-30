kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/geoclue/releases/2.4/geoclue-2.4.12.tar.xz
  ref: 05d0e2ec077a685de2a9c63973fe6d18366ca53881d1f0750110b93c5c68caca
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libnotify.bst
- sdk/libsoup.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: |
    --disable-3g-source \
    --disable-cdma-source \
    --disable-modem-gps-source \
    --disable-nmea-source
