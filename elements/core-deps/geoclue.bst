kind: meson
sources:
- kind: git
  url: git_freedesktop_org:geoclue
  track: master
depends:
- core-deps/ModemManager.bst
- core-deps/avahi.bst
- core-deps/glib.bst
- core-deps/json-glib.bst
- core-deps/libnotify.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
