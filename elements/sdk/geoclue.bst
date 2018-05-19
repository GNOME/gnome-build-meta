kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:geoclue
  track: master
depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libnotify.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-3g-source --disable-cdma-source --disable-modem-gps-source
    --disable-nmea-source
