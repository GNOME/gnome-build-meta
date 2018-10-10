kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/geoclue/releases/2.4/geoclue-2.4.12.tar.xz
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
